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
