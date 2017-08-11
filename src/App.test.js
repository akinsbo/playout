import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
var webdriverio = require('webdriverio');
var options = { desiredCapabilities: { browserName: 'chrome' } };
var client = webdriverio.remote(options);

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
});

// client
//     .init()
//     .url('https://duckduckgo.com/')
//     .setValue('#search_form_input_homepage', 'WebdriverIO')
//     .click('#search_button_homepage')
//     .getTitle().then(function(title) {
//         console.log('Title is: ' + title);
//         // outputs:
//         // "Title is: WebdriverIO (Software) at DuckDuckGo"
//     })
//     .end();
