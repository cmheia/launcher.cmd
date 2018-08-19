@echo off

call %~dp0..\set_node_proxy.cmd
call %~dp0..\cfg_sys_path.cmd
call %~dp0..\cfg_node_path.cmd

set PATH=%SYS_PATH%;%NODE_PATH%

npm i -g cnpm --registry=https://registry.npm.taobao.org
rem npm i -g clean-css
rem npm i -g html-minifier
rem npm i -g uglifycss
npm i -g uglify-js
npm i -g csso-cli
