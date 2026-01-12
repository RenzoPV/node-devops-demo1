## DevOps Demo Project

Proyecto demo para prácticas DevOps:
- Dockerización de app Node.js
- Pipeline CI con GitHub Actions
- Build automático en cada push

## Ejecutar localmente

```sh
git clone git@github.com:heroku/node-js-sample.git # or clone your own fork
cd node-js-sample
npm install
npm start
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Desplegar a Heroku

```
heroku create
git push heroku master
heroku open
```

