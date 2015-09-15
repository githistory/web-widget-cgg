angular.module 'cgg.widget.demo'

.controller 'demo', ($scope, $rootScope)->
  $scope.progress =
    value: 33
    steps: [
      icon: 'bank'
      value: 0
    ,
      icon: 'faq'
      value: 33
    ,
      icon: 'libris-details'
      value: 66
    ,
      icon: 'fast-approval'
      value: 100
    ]
  $scope.max = _.max($scope.progress.steps, 'value').value
