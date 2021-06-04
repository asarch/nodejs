# Express

## Installation

```
npm install --verbose express express-generator sequelize pg pg-hstore handlebars
```

In Debian you could:

```
apt-get install nodejs nodejs-doc npm node-express node-express-generator
```

## Create the application

```
[$] express --view=hbs myapp

[$] cd myapp

[$] npm install --verbose

[$] DEBUG=* npm start
```

## Basic routing

```JavaScript
app.METHOD(PATH, HANDLER);

app.get("/", (res, req) => {
    res.send("Hello, world!");
});

app.post("/", (res, req) => {
    res.send('Got a POST request!');
});

app.put("/", (res, req) => {
    res.send('Got a PUT request!');
});

app.delete("/", (res, req) => {
    res.send('Got a DELETE request!');
});
```

## Serving static files in Express

```JavaScript
express.static(root, [options]);

app.use(express.static('public'));
app.use(express.static('files'));

app.use('/static', express.static('public'));

app.use('/static', express.static(path.join(--dirname, 'public')));
```

## Adding a route

### myapp/routes/students.js

Edit the file:

```sh
vim myapp/routes/students.js
```
And add the following:

```JavaScript
var express = require('express';
var router = require('router');

router.get('/students', (req, res, next) => {
    res.render('index', {title : 'Students'});
});

module.exports = router;
```

### Enabling the route

Edit the file:

```sh
vim myapp/app.js
```

and add the following:

```JavaScript
…
var students = require('./routes/students.js');
…
app.use('/students', students);
```

### myapp/view/students.hbs

Edit the template:

```sh
vim myapp/view/students.hbs
```

and add the following:

```HTML
{{ title }}
<h1>Welcome to {{ title }}!</h1>
```

### Edit the layout

Edit the file:

```sh
vim myapp/views/layout.hbs
```

and add the following:

```HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script type="text/javascript" src="/css/jquery-3.5.0.min.js"></script>
    <link rel='stylesheet' href='/stylesheets/style.css' />
    <title>{{ title }}</title>    
  </head>
  <body>
    {{ body }}}
  </body>
</html>
```
