= procmemsize

watch the memory size of processes in specified command on GNU/Linux.

== Author

Tanaka Akira <akr@fsij.org>

== Usage

  procmemsize command [args...]

procmemsize scans /proc/*/status and records maximum memory usage
of processes invoked, directly or indirectly, from the command.

== Example

  % ./procmemsize sleep 1
  sleep (25000): VmData=152kB VmExe=16kB VmHWM=484kB VmLck=0kB VmLib=1292kB VmPTE=12kB VmPeak=3640kB VmRSS=484kB VmSize=3640kB VmStk=88kB
  VmData: 152 kB
  VmExe: 16 kB
  VmHWM: 484 kB
  VmLck: 0 kB
  VmLib: 1292 kB
  VmPTE: 12 kB
  VmPeak: 3640 kB
  VmRSS: 484 kB
  VmSize: 3640 kB
  VmStk: 88 kB

  % ./procmemsize sh -c 'sleep 1; /bin/sleep 1; ruby -e "sleep 1"; perl -e "sleep 1"'
  sh (25090): VmData=724kB VmExe=648kB VmHWM=1604kB VmLck=0kB VmLib=1636kB VmPTE=16kB VmPeak=5264kB VmRSS=1604kB VmSize=5264kB VmStk=88kB
  sh (25090): VmHWM=1608kB VmRSS=1608kB
  ruby (25093): VmData=748kB VmExe=820kB
  perl (25094): VmExe=1016kB
  VmData: 748 kB
  VmExe: 1016 kB
  VmHWM: 1608 kB
  VmLck: 0 kB
  VmLib: 1636 kB
  VmPTE: 16 kB
  VmPeak: 5264 kB
  VmRSS: 1608 kB
  VmSize: 5264 kB
  VmStk: 88 kB

== Requirement

* Linux
  (/proc/*/status is used)

