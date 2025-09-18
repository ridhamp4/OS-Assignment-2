#include "user.h"
#include "pstat.h"

int
main(int argc, char **argv)
{
  int me = getpid();
  srand(1);
  settickets(me, 1);

  int c1 = fork();
  if (c1 == 0) {
    settickets(getpid(), 4);
    for (int i = 0; i < 2000000; i++) ;
    sleep(5);
    for (int i = 0; i < 2000000; i++) ;
    exit();
  }

  int c2 = fork();
  if (c2 == 0) {
    settickets(getpid(), 1);
    sleep(10);
    for (int i = 0; i < 4000000; i++) ;
    exit();
  }

  for (int t = 0; t < 6; t++) {
    struct pstat ps;
    if (getpinfo(&ps) == 0) {
      for (int i = 0; i < NPROC; i++) {
        if (ps.inuse[i] && (ps.pid[i] == me || ps.pid[i] == c1 || ps.pid[i] == c2)) {
          printf(1, "pid=%d tickets=%d boostsleft=%d runticks=%d\n",
                 ps.pid[i], ps.tickets[i], ps.boostsleft[i], ps.runticks[i]);
        }
      }
    }
    sleep(5);
  }

  wait();
  wait();
  exit();
}

