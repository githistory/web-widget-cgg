angular.module 'cgg.widget'

.directive 'cggProgress', (_, tinycolor)->
  restrict: 'AE'
  replace: true
  templateUrl: 'templates/cgg-progress'
  scope:
    value: '='
    steps: '='
    color: '@'
  controller: 'cggProgress'
  link: ($scope, element, attrs)->

.controller 'cggProgress', ($scope)->
  $scope.colorMinor = tinycolor($scope.color).brighten(20).toString()
  $scope.sortedSteps = _.sortBy $scope.steps, 'value'
  $scope.max = $scope.sortedSteps[$scope.steps.length-1].value
  $scope.value = Math.min $scope.value, $scope.max

  $scope.refreshSteps = (value)->
    unless typeof value is 'number' then return
    _.each $scope.sortedSteps, (step)->
      step.color = if value<step.value then $scope.colorMinor else $scope.color

  $scope.$watch 'value', (nv)->
    $scope.refreshSteps(nv)
