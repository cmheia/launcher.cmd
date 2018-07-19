@echo off

set PATH=C:\Program Files (x86)\SEGGER\JLink;%PATH%

JLinkGDBServerCL -USB -device MCIMXRT1052 -endian little -if SWD -speed 12000 -noir -LocalhostOnly
