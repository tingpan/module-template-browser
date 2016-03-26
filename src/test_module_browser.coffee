if (isNode = typeof module == 'object' and module.exports)
  SimpleModule = require 'simple-module'
  _            = require 'lodash'
else
  SimpleModule = window.SimpleModule
  _            = window._

class TestModuleBrowser extends SimpleModule

  @test: ->
    console.log 'test'
    @

  @opts:
    name: 'test_module_browser'

  constructor: (opts) ->
    super()
    _.extend @opts, TestModuleBrowser.opts, opts
    @name = @opts.name

  name: (name) ->
    if name
      @name = name
      @
    else
      @name

if isNode
  module.exports = TestModuleBrowser
else
  window.TestModuleBrowser = TestModuleBrowser
