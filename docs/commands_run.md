Install NPM dependencies
========================
#### Testing

```cli
##Not needed------------------------------------------------------
$ npm install selenium-standalone@latest -g
$ selenium-standalone install
$ selenium-standalone start
##--------------------------------------------------------------

#Running / stopping server in background process (stopping is not yet supported on standalone server 3.x.x):

webdriver-manager start --detach
webdriver-manager shutdown
```

####BDD
https://github.com/webdriverio/cucumber-boilerplate snippets
------------------------------------------------------------------------------
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
