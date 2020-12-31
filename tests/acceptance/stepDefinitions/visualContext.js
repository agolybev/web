const { Then } = require('cucumber')
const { client } = require('nightwatch-api')

const visualElements = Object.freeze({
  ocis: {
    topBar: {
      selector: '#oc-topbar',
      path: 'ocis/topBar'
    }
  },
  oc10: {
    topBar: {
      selector: '#oc-topbar',
      path: 'oc10/topBar'
    }
  }
})

Then('the top bar should match the default baseline', async function() {
  const backend = client.globals.ocis ? 'ocis' : 'oc10'
  const element = visualElements[backend].topBar
  await client.assert.screenshotIdenticalToBaseline(
    element.selector,
    element.path,
    { threshold: 0 },
    'Matched the top bar of files page'
  )
})
