Install NPM dependencies
========================
#### Testing

```sh
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
run wdio -- --spec ./test/features/select.feature

```Gherkin
@Tag
Feature: ...

```
run wdio -- --tags=@Tag,@AnotherTag


http://cucumber-mink.js.org/steps/

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
--------------------------------------------------------------
At wdio.conf.js, add the following:
```js
// wdio.conf.js
export.config = {
  // ...
  reporters: ['dot', 'spec'], //after installing wdio-spec-reporter
  services: ['selenium-standalone'], //after installing wdio-selenium-standalone-service
  services: ['phantomjs'], //after installing wdio-phantomjs-service
  // ...
};
```
-----------------------------------------------------------------
At package.json, add the following:

```js
"scripts": {
  ...,
"local-webserver": "http-server ./public -s -p:8003",
...
}
```
local-webserver: http-server [path] [options]
* ./public: the path to the index.html
* -s: Silent mode. Do not log output.
* -p: port to use

Also add the below:

```js
"scripts": {
  ...,
"test:features": "npm run local-webserver & (wdio wdio.BUILD.conf.js; wdio_ret=$?; kill $(lsof -t -i:8003); exit $wdio_ret)",
...

"test:unit": "jest --config=jest.json",
"test:validate": "eslint 'src/**/*.js' 'test/**/*.js!(setup.js)'"
}
```
