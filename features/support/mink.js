// features/support/mink.js

const Mink = require('cucumber-mink');

// Selenium + Firefox
const parameters = {
  driver: {
    logLevel: 'silent',
    desiredCapabilities: {
      browserName: 'firefox',
    },
    port: 4444,
  },
  timeout: 5000,
};

module.exports = function () {
  Mink.init(this, parameters);
};
