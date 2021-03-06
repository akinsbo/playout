import injectTapEventPlugin from 'react-tap-event-plugin'

import AppBar from 'material-ui/AppBar'
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider'
import React, { Component } from 'react' // eslint-disable-line no-unused-vars
import logo from './logo.svg'
import './App.css'

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin()

class App extends Component {
  render () {
    return (
      <MuiThemeProvider>
        <div className="App">
          <div className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <AppBar title="My App" />
            <h2>Welcome to React</h2>
          </div>
          <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
          </p>
        </div>
      </MuiThemeProvider>
    )
  }
}

export default App
