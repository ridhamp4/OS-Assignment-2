#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "pstat.h"

int sys_fork(void)
{
    return fork();
}

int sys_exit(void)
{
    exit();
    return 0;  // not reached
}

int sys_wait(void)
{
    return wait();
}

int sys_kill(void)
{
    int pid;

    if(argint(0, &pid) < 0) {
        return -1;
    }

    return kill(pid);
}

int sys_getpid(void)
{
    return proc->pid;
}

int sys_sbrk(void)
{
    int addr;
    int n;

    if(argint(0, &n) < 0) {
        return -1;
    }

    addr = proc->sz;

    if(growproc(n) < 0) {
        return -1;
    }

    return addr;
}

int sys_sleep(void)
{
    int n;
    uint ticks0;

    if(argint(0, &n) < 0) {
        return -1;
    }

    acquire(&tickslock);

    ticks0 = ticks;

    // Set precise wakeup deadline in proc before sleeping
    proc->sleep_until_tick = ticks + (uint)n;
    while(ticks - ticks0 < n){
        if(proc->killed){
            release(&tickslock);
            return -1;
        }

        sleep(&ticks, &tickslock);
    }

    release(&tickslock);
    return 0;
}

int sys_settickets(void)
{
    int pid, n_tickets;
    if (argint(0, &pid) < 0) return -1;
    if (argint(1, &n_tickets) < 0) return -1;
    if (n_tickets <= 0) return -1;
    acquire(&ptable.lock);
    struct proc *p;
    int ok = -1;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
        if(p->pid == pid && p->state != UNUSED){
            p->tickets = n_tickets;
            ok = 0;
            break;
        }
    }
    release(&ptable.lock);
    return ok;
}

extern uint rseed;
int sys_srand(void)
{
    int seed;
    if (argint(0, &seed) < 0) return -1;
    rseed = (uint)seed;
    return 0;
}

int sys_getpinfo(void)
{
    struct pstat *st;
    if (argptr(0, (char**)&st, sizeof(*st)) < 0) {
        return -1;
    }
    acquire(&ptable.lock);
    int i = 0;
    struct proc *p;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++, i++){
        st->inuse[i] = (p->state != UNUSED);
        st->pid[i] = p->pid;
        st->tickets[i] = p->tickets;
        st->runticks[i] = p->runticks;
        st->boostsleft[i] = p->boostsleft;
    }
    release(&ptable.lock);
    return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int sys_uptime(void)
{
    uint xticks;

    acquire(&tickslock);
    xticks = ticks;
    release(&tickslock);

    return xticks;
}
