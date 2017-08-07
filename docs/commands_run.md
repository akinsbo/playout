Install NPM dependencies
========================

```cli
$ npm install --save-dev cucumber eslint eslint@^3.19.0 eslint@>=4.1.1 eslint-plugin-react mocha sass-loader node-sass cucumber-mink webdriverio

$ npm install --save material-ui redux react-redux react-tap-event-plugin
----------------------------------------------------------------------
$ npm install selenium-standalone@latest -g
$ selenium-standalone install
$ selenium-standalone start
```
------------------------------------------------------------------------

run this:
```cli
./node_modules/.bin/eslint --init
./node_modules/.bin/eslint yourfile.js
```

--------------------------------------------------------------------------------
At start of App.js, inject this
```js
import injectTapEventPlugin from 'react-tap-event-plugin';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

```

At .eslintrc.json, I added the following configuration
```json
{
  "plugins": [
    "react"
  ],
  "extends": [
    "standard",
    "eslint:recommended",
    "plugin:react/recommended"
  ]
}
```
