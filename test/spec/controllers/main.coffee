'use strict'

describe 'Controller: MainCtrl', ->

  # load the controller's module
  beforeEach module 'mytodoApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl as mc', {
      $scope: scope
    }

  it 'should attach a list of todos to the scope', ->
    expect(scope.mc.todos.length).toBe 0

  it 'should add items to the list', ->
    scope.mc.toAdd = 'Test 1'
    scope.mc.addTodo()
    expect(scope.mc.todos.length).toBe 1 

  it 'should add then remove an item from the list', ->
    scope.mc.todo = 'Test 1';
    scope.mc.addTodo()
    scope.mc.removeTodo 0
    expect(scope.mc.todos.length).toBe 0
