dvl-core [![build_status]](https://circleci.com/gh/dobtco/dvl-core)
====

DOBT"s base styles. [Live demo](https://dvlcore.herokuapp.com/)

## Usage

#### Rails (or any Sprockets environment)

```
# Gemfile
gem 'dvl-core', github: 'dobtco/dvl-core'

# assets/stylesheets/application.css
/*
*= require dvl/core
*= require dvl/components/flashes
*= require dvl/components/footer
*= require simple_form/dropdown_select
*/

# assets/javascripts/application.js
//= require dvl/core
//= require dvl/components/flashes
//= require simple_form/dropdown_select
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

[build_status]: https://circleci-badges.herokuapp.com/dobtco/dvl-core/87144b68eadac365d9368f5c62e68d3dfcad14bb
