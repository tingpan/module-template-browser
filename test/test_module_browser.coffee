TestModuleBrowser = require '../src/test_module_browser.coffee'
SimpleModule = require 'simple-module'
expect = require('chai').expect

describe 'TestModuleBrowser', ->

  it 'should inherit from SimpleModule', ->
    module = new TestModuleBrowser()
    expect(module instanceof SimpleModule).to.be.equal(true)
