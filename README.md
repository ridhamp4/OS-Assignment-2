## Lottery Scheduler with Boosted Sleep Compensation (xv6-ARM)

### Overview

This assignment modifies xv6 to use a lottery scheduler with compensation boosts for sleeping processes and to avoid spurious wakeups during timed sleeps.

Implemented features:

- Lottery scheduling at each tick among RUNNABLE processes
- Ticket inheritance on fork; `init` starts with 1 ticket
- Sleep compensation: if a process is SLEEPING for x ticks, it gets double tickets for the next x lotteries it participates in after waking; boosts accumulate if it sleeps again before consuming remaining boosts
- Precise sleep/wakeup: sleeping on `&ticks` no longer wakes every tick; processes wake only when their sleep deadline arrives
- New syscalls: `settickets`, `srand`, `getpinfo`
- Test program `lotto` to demonstrate scheduling and boosts

---

### Files edited/added

- `proc.h`

  - Added fields to `struct proc`:
    - `int tickets;` base ticket count (>= 1)
    - `int boostsleft;` remaining boosted lotteries
    - `int runticks;` total ticks scheduled
    - `uint sleep_start_tick;` tick when process went to sleep
    - `uint sleep_until_tick;` absolute wakeup tick deadline when sleeping on `&ticks`

- `proc.c`

  - Added RNG:
    - `#define RAND_MAX 0x7fffffff`
    - `uint rseed; uint rand(void);`
  - `allocproc()`: initialize lottery fields (default 1 ticket, 0 boosts, counters 0)
  - `userinit()`: `init` starts RUNNABLE with 1 ticket (already set by `allocproc`)
  - `fork()`: child inherits `tickets`; resets `boostsleft` and `runticks`
  - `scheduler()`: replaced RR with lottery selection each tick, using doubled effective tickets when `boostsleft > 0`; increments `runticks` and decrements `boostsleft` when a process runs
  - `sleep()`: records `sleep_start_tick` when sleeping on `&ticks`
  - `wakeup1()`: when `chan == &ticks`, wake only after `ticks >= sleep_until_tick`; compute slept ticks, accumulate into `boostsleft`, then mark RUNNABLE

- `syscall.h`

  - Added syscall numbers:
    - `SYS_settickets 22`
    - `SYS_srand 23`
    - `SYS_getpinfo 24`

- `syscall.c`

  - Declared and registered new syscalls in the syscall table: `sys_settickets`, `sys_srand`, `sys_getpinfo`

- `sysproc.c`

  - Included `pstat.h`, `spinlock.h`; declared `extern ptable`
  - `sys_sleep()`: sets `proc->sleep_until_tick = ticks + n` before sleeping; continues to sleep until deadline
  - Implemented:
    - `sys_settickets(int pid, int n_tickets)`; validates input, sets `p->tickets`
    - `sys_srand(uint seed)`; sets `rseed`
    - `sys_getpinfo(struct pstat *st)`; fills stats from `ptable`

- `device/timer.c`

  - Timer ISR still calls `wakeup(&ticks)`; filtering happens in `wakeup1()` to avoid early wakeups

- `usr/user.h`

  - Included `types.h` so `uint` is visible to user programs
  - Declared user stubs: `int settickets(int pid, int n_tickets); void srand(uint seed); int getpinfo(struct pstat*);`

- `usr/usys.S`

  - Added syscall stubs: `settickets`, `srand`, `getpinfo`

- `pstat.h` (new)

  - Kernel/user header exposing `struct pstat` with fields: `inuse`, `pid`, `tickets`, `runticks`, `boostsleft`

- `usr/lotto.c` (new)

  - Test program that forks two children, sets tickets, sleeps to accumulate boosts, and periodically prints `pid`, `tickets`, `boostsleft`, and `runticks` via `getpinfo()`

- `usr/Makefile`
  - Added `_lotto` to `UPROGS` so it is included in the filesystem image

---

### Scheduler details

- On each scheduling loop iteration (one tick), compute total effective tickets among RUNNABLE processes, doubling tickets for processes with `boostsleft > 0`
- Use `rand() % total_effective_tickets` to select a winner; dispatch it
- After dispatch returns, increment `winner->runticks` and decrement `winner->boostsleft` if positive

Notes:

- `getpinfo` returns base `tickets` (do not double here) and current `boostsleft`
- Children inherit base `tickets` only; they do not inherit `boostsleft`

---

### Precise sleep/wakeup and boost accounting

- `sys_sleep(n)` sets `sleep_until_tick = ticks + n` and sleeps on `&ticks`
- `wakeup1(&ticks)` wakes a process only when `ticks >= sleep_until_tick`
- On wake, compute `slept = ticks - sleep_start_tick` and add to `boostsleft` (accumulates across multiple sleeps)

This prevents the old behavior where sleepers woke every tick to poll, which could prematurely consume boosted rounds.

---

### New syscalls

- `int settickets(int pid, int n_tickets)`
  - Set base tickets for a process; returns 0 on success, -1 on error
- `void srand(uint seed)`
  - Set kernel RNG seed used by the scheduler
- `int getpinfo(struct pstat *st)`
  - Populate per-process stats; returns 0 on success, -1 on invalid pointer

---

### Build and run

From project root:

```bash
make clean && make && make qemu-nox
```

In xv6 shell:

```sh
lotto
```

Expected: higher-ticket process accrues more `runticks`. After sleeps, `boostsleft` increases and then counts down as the process participates in lotteries with doubled effective tickets.

---

### Testing tips

- Call `srand(1)` in tests for deterministic sequences
- Adjust tickets with `settickets(getpid(), N)` in user programs
- Use `getpinfo()` to observe the effects without exposing doubled tickets
