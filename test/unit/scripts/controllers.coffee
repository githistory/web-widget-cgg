
describe 'controllers', ->

  $controller = null

  beforeEach module 'widget'
  beforeEach inject (_$controller_)->
    $controller = _$controller_

  describe 'widget', ->
    describe 'false2true', ->
      it 'should change variable trueOrFalse from false to true', ->
        $scope = {}
        controller = $controller 'widget', {$scope: $scope}
        $scope.false2true()
        expect($scope.trueOrFalse).toEqual true


