'use strict'

class MainCtrl
    constructor: (@localStorageService, @$scope) ->
        todosInStore = @localStorageService.get("todos")
        @todos = todosInStore and todosInStore.split("\n") or []
        @$scope.$watch "mc.todos", 
                       (=> @localStorageService.add "todos", @todos.join("\n")), 
                       true
    addTodo: ->
        @todos.push @toAdd
        @toAdd = ''
    removeTodo: (index) ->
        @todos.splice index, 1

angular.module('mytodoApp')
    .controller 'MainCtrl', ['localStorageService','$scope', MainCtrl]

# ################################################################################
# # no class CoffeeScript way with scope

# angular.module('mytodoApp')
#   .controller 'JaumeController', ($scope) ->
#     $scope.name = "Jaume"
#     $scope.$watch "name", (-> alert $scope.name), true

# ################################################################################
# # class way with scope

# class JeanController
#     constructor: ($scope) ->
#         $scope.nom = "Jean-Pierre"

# angular.module('mytodoApp')
#     .controller 'jeanController', ['$scope', JeanController]

# ################################################################################
# # class way without scope

# class PhilController
#     constructor: ->
#         @nom = "Philippe"

# angular.module('mytodoApp')
#     .controller 'philController', [PhilController]

# ################################################################################
