# runescraper

requires go, node, mariadb

first restore the mariadb database in backend/cmd/runescape.sql
change the environment variables in backend/cmd/main/main.go to your db user and password

`cd backend`

`go run cmd/main/main.go &`

`cd ../website`

`npm install`

`npx parcel serve src/index.html`


access the project at `http://localhost:1234/runescraper`
