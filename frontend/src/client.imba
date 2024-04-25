tag app
	count = 0
	<self> 
		<div [mb:2 bg:rose2]> "Hello from imba"
		<button @click=(count++)> "Count {count}"

		<div route="/about"> "this is about page"

imba.mount <app>