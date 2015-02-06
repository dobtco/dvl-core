dvl-core [![version]](http://rubygems.org/gems/dvl-core) [![build_status]](https://circleci.com/gh/dobtco/dvl-core)
====

Base styles for the DOBT View Layer.

## Usage

### Gemfile

```
gem 'dvl-core'
```

### assets/javascripts/application.css.scss

```
@import 'dvl/core';
```

## Screenshots

### Core

![core_760](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/core_760.png)

### Forms

![forms_1200](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/forms_1200.png)

### Footer

![footer](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/footer.png)

### Flashes

![flash_error](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/flash_error.png)
![flash_success](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/flash_success.png)
![flash_info](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/flash_info.png)

### Modals

![modal](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/modal.png)
![confirm_modal](http://artifinder.herokuapp.com/gh/dobtco/dvl-core/x/artifacts/0/home/ubuntu/dvl-core/screenshots/confirm_modal.png)

## Development

1. `script/bootstrap`
2. `script/preview`
3. Open [http://localhost:4567](http://localhost:4567) in your web browser

## Usage outside of Ruby/Rails

We include compiled CSS in the `dist/` directory for use outside of a Sprockets environment. Occasionally these stylesheets may get out of sync -- if so, running `script/compile` will rebuild them, and you can commit the result as well.

## License

[MIT](http://dobtco.mit-license.org/)

[version]: https://img.shields.io/gem/v/dvl-core.svg
[build_status]: https://circleci-badges.herokuapp.com/dobtco/dvl-core/87144b68eadac365d9368f5c62e68d3dfcad14bb
