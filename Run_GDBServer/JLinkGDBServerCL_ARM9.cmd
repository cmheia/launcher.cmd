@echo off

set PATH=C:\Program Files (x86)\SEGGER\JLink;%PATH%

JLinkGDBServerCL -if jtag -device ARM9 -endian little -speed 1000 -port 2331 -swoport 2332 -telnetport 2333 -vd -ir -localhostonly 1 -singlerun -strict -timeout 0 -nogui
