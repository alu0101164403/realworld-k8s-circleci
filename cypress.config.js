const { defineConfig } = require('cypress')

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://localhost:4100',
    env: {
      apiUrl: 'http://localhost:3000',
      user: {
        email: 'tester@test.com',
        password: 'password1234',
        username: 'testuser'
      },
      codeCoverage: {
        url: 'http://localhost:3000/__coverage__'
      }
    },
    viewportHeight: 1000,
    viewportWidth: 1000,
    video: true,
  }
})
