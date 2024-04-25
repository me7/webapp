import {Elysia} from 'elysia'
import {staticPlugin} from '@elysiajs/static'

const app = new Elysia()
	.use(staticPlugin({prefix:'/assets', assets: 'assets'}))
	.get('/*', Bun.file('index.html'))
	.listen(3000)

console.log "🦊 elysia running at http://{app.server..hostname}:{app.server..port}"