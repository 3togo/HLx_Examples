#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/eli/git/others/HLx_Examples/Vision/video_edge/proj/sol1/.autopilot/db/a.g.bc ${1+"$@"}
