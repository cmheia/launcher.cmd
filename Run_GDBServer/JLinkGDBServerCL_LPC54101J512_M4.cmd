@echo off

set PATH=C:\Program Files (x86)\SEGGER\JLink;%PATH%

JLinkGDBServerCL -USB -device LPC54101J512_M4 -endian little -if SWD -speed 6000 -noir -LocalhostOnly
