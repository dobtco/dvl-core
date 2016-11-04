dvl-core [![CircleCI](https://circleci.com/gh/dobtco/dvl-core.svg?style=svg&circle-token=87144b68eadac365d9368f5c62e68d3dfcad14bb)](https://circleci.com/gh/dobtco/dvl-core)
====

DOBT's base styles. [Live demo](https://design.dobt.co/)

## Usage

#### Rails (or any Sprockets environment)

```
# Gemfile
gem 'dvl-core', github: 'dobtco/dvl-core'

# assets/stylesheets/application.css
/*
*= require dvl/core
*/

# assets/javascripts/application.js
//= require dvl/core
```

#### Without Rails

We include compiled CSS in the `dist/` directory for use outside of a Sprockets environment. Occasionally these stylesheets may get out of sync -- if so, running `script/compile` will rebuild them, and you can commit the result as well.

## Development

1. `script/bootstrap`
2. `script/server`
3. Open [http://dvlcore.dev](http://dvlcore.dev) in your web browser (assuming you have [dobtco/our-boxen](https://github.com/dobtco/our-boxen) installed)

## Deployment

Push to `master` and the demo site will be deployed.

## License

[MIT](http://dobtco.mit-license.org/)
