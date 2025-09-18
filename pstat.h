#ifndef PSTAT_INCLUDE_
#define PSTAT_INCLUDE_

#include "param.h"

struct pstat {
  int inuse[NPROC];
  int pid[NPROC];
  int tickets[NPROC];
  int runticks[NPROC];
  int boostsleft[NPROC];
};

#endif

