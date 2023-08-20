init:
	git init
	npm init -y
	npm install --save-dev typescript  
	npm install --save-dev nodemon ts-node-dev
	npm install --save-dev rimraf 

clean:
	rm -rf dist
	rm -rf node_modules
	rm -f package-lock.json

install:
	npm install

build: 
	@npm run build


rebuild: clean install build
	 @echo rebuild

run: 
	@npm run start	

dev:
	  @npm run dev	