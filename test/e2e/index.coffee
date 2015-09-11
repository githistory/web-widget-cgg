describe 'index page', ->

  describe 'hello widget', ->

    it 'should say hello to user with correct name', ->

      browser.get 'http://localhost:8080'
      element(By.model('name')).sendKeys 'William'
      expect(element(By.css('.hello')).getText()).toEqual 'Hello William'
