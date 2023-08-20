init:
	git init
	npm init -y
	npm install typescript --save-dev 
	npm install nodemon ts-node-dev  --save-dev
	npm install rimraf --save-dev

clean:
	rm -rf dist
	rm -rf node_modules
	rm -f package-lock.json

install:
	npm install

build: 
	npm run build


rebuild: clean install build
	 @echo rebuild

run: 
	npm run start	

dev:
	npm run dev	