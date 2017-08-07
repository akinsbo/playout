```cli
npm install --save-dev cucumber eslint mocha sass-loader node-sass
npm install --save material-ui redux react-redux react-tap-event-plugin
```

run this:
```cli
./node_modules/.bin/eslint --init
./node_modules/.bin/eslint yourfile.js
```


At start of app, inject this
```js
import injectTapEventPlugin from 'react-tap-event-plugin';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

```
