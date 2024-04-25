# Web Development Template
https://github.com/me7/webapp

this repo is for my personal webapp project template
- backend use [ElysiaJS](elysiajs.com) server runing on [bun](bun.sh)
- frontend use [imba](imba.io) and build using [vite](vitejs.dev)

## how to use
- get bun first `npm install -g bun`
- get project to your disk `bun create me7/webapp`
- `bun dev` to start develop webapp
- `bun dist` to compile webapp to "dist" folder

## notes and technical decision
- frontend use imba because i want to deal on 1 language not 3 (html, css, js) and imba syntax is resonate with my brain (minimal syntax noise). frontend part use vite and vite-imba-plugin for HMR (hot module reload) during development.
- backend use elysiajs also because it's minimal syntax noise, at first write it using typescript but i think better to use same imba lang as frontend. So now it's use bimba-cli bun plugin during development and use `imba build --esm` for build (need --esm to create final mjs file)
- runtime is bun (instead of node or deno) because why not? it's faster, have built in sqlite, websocket and can compile server to single exe file.
- project is mono repo for both frontend and backend, run script `bun dev` or `bun dist` will run/compile both frontend and backend project. In the future maybe change backend part (e.g. jester in nim-lang, or zap in zig-lang) due to compiled output is quite big (97MB)


## difficulties found
- work on elysia: intellisence not working on imba (e.g. app.use(...)), it's working on typscript

## change log
- 2024 Apr 24 - first working repo
- to be updated