#!/bin/sh

mkdir node_logs

echo "Installing ember-cli"
npm install --verbose ember-cli > node_logs/ember-cli.log 2>&1                                                                                  

echo "Installing elm"
npm install --verbose elm > node_logs/elm.log 2>&1

echo "Installing expressjs"
npm install --verbose express > node_logs/expressjs.log 2>&1

echo "Installing sequelize"
npm install --verbose sequelize > node_logs/sequelize.log 2>&1

echo "Installing sequelize-cli"
npm install --verbose sequelize-cli > node_logs/sequelize-cli.log 2>&1

echo "Installing sqlite3"
npm install --verbose sqlite3 > node_logs/sqlite3.log 2>&1

echo "Installing pg"
npm install --verbose pg > node_logs/pg.log 2>&1

echo "Installing pg-hstore"
npm install --verbose pg-hstore > node_logs/pg-hstore.log 2>&1

# From http://expressjs.com/es/guide/database-integration.html
echo "Installing pg-promise"
npm install --verbose pg-promise > node_logs/pg-promise.log 2>&1

echo "Installing unitejs-cli"
npm install --verbose unitejs-cli > node_logs/unitejs-cli.log 2>&1

echo "Installing render-vendor"
npm install --verbose render-vendor > node_logs/render-vendor.log 2>&1
