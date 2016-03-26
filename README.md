# TestModuleBrowser

[![Latest Version](https://img.shields.io/npm/v/test_module_browser.svg)](https://www.npmjs.com/package/test_module_browser)
[![Build Status](https://img.shields.io/travis/tingpan/test_module_browser.svg)](https://travis-ci.org/tingpan/test_module_browser)
[![Coveralls](https://img.shields.io/coveralls/tingpan/test_module_browser.svg)](https://coveralls.io/github/tingpan/test_module_browser)
[![Code Climate](https://img.shields.io/codeclimate/github/tingpan/test_module_browser.svg)](https://codeclimate.com/github/tingpan/test_module_browser)
[![David](https://img.shields.io/david/tingpan/test_module_browser.svg)](https://david-dm.org/tingpan/test_module_browser)
[![David](https://img.shields.io/david/dev/tingpan/test_module_browser.svg)](https://david-dm.org/tingpan/test_module_browser#info=devDependencies)
[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg)](https://gitter.im/tingpan/test_module_browser)

test_module_browser on Github.

## Installation

Install via npm:

```bash
npm install --save test_module_browser
```

Install via bower:

```bash
bower install --save test_module_browser
```

## Submitting Issues

If have issues while using this module, please consider discussing it on [Gitter channel](https://gitter.im/tingpan/test_module_browser) first.

If you confirm the issue is indeed a bug, you can browse the [issues page](https://github.com/tingpan/test_module_browser/issues) for existing issues describing the same problem.

If you found nothing on issues page, please create an new issue with detailed debug information, for example, reproduce procedure, error stacks, screenshots etc. Issues without enough debug information will probably be closed.

## Development

Clone repository from github:

```bash
git clone https://github.com/tingpan/test_module_browser.git
```

Install npm dependencies:

```bash
npm install
```

Run default gulp task to build project, which will compile source files, run test and watch file changes for you:

```bash
gulp
```

Now, you are ready to go.

## Publish

If you want to publish new version to npm and bower, please make sure all tests have passed before you publish new version, and you need do these preparations:

* Add new release information in `CHANGELOG.md`. The format of markdown contents will matter, because build scripts will get version and release content from this file by regular expression. You can follow the format of the older release information.

* Run `gulp` default task, which will get version number from `CHANGELOG.md` and bump it into `package.json` and `bower.json`, before you push the commit for new version.

* Put your [personal API tokens](https://github.com/blog/1509-personal-api-tokens) in `/.token.json`, which is required by build scripts to request [Github API](https://developer.github.com/v3/):

```json
{
  "github": "[your github personal access token]"
}
```

Now you can run `gulp publish` task, which will do these work for you:

* Generate the static doc site and push it to `gh-pages` branch.
* Get release information from `CHANGELOG.md` and request Github API to create new release.

If everything goes fine, you can publish new version to npm at the end:

```bash
npm publish
```
