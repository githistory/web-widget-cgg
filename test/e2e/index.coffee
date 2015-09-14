describe 'index page', ->

  describe 'hello widget', ->
    beforeEach ->
      browser.get '/'

    it 'should say hello to user with correct name', ->
      element(By.model('name')).sendKeys 'William'
      expect(element(By.css('.hello')).getText()).toEqual 'Hello William'
