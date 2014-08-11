'use strict'

###*
 # @ngdoc function
 # @name mytodoApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the mytodoApp
###
angular.module('mytodoApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.name = "Jaume"

################################################################################
# class way with scope

class JeanController
    constructor: ($scope) ->
        $scope.nom = "Jean-Pierre"

angular.module('mytodoApp')
    .controller 'jeanController', ['$scope', JeanController]

################################################################################
# class way without scope

class PhilController
    constructor: ->
        @nom = "Philippe"

angular.module('mytodoApp')
    .controller 'philController', [PhilController]

################################################################################