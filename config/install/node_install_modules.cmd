@echo off

call %~dp0set_node_proxy.cmd

npm i -g cnpm --registry=https://registry.npm.taobao.org
npm i -g uglifycss
npm i -g uglify-js
npm i -g clean-css
npm i -g html-minifier
