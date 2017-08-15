# Changelog

## [1.2.0] - 2017-07-12
### Added
- Rules:
    - [Given] `I expect that element "([^"]*)?" is( not)* empty$`

### Changed
- Switched to [Yarn]() for managing our packages
 [cheapsteak](https://github.com/cheapsteak))

### Fixed
- `checkCointainsText` now correctly checks if the given element actualy contains the given text (thanks [inspiraller](https://github.com/inspiraller))
- Removed unneeded sudo from `clean` script (thanks [l-hendriks](https://github.com/l-hendriks))
- Resolved an issue with running `yarn run clean` in Bash (thanks [mondwan](https://github.com/mondwan))
- Fixed `^I expect that element "([^"]*)?" is( not)* empty$` then rule (thanks [stevezxu](https://github.com/stevezxu))


## [1.1.1] - 2017-03-03
### Added
- Requirements section to the readme

### Changed
- Dependency monitor switched from David to VersionEye
- Updated the readme to change the badges & fix the main heading
- Updated dependencies

### Fixed
- CodeClimate integration & test-coverage
- Missing cucumber dependency (problem when installing using Yarn as the peerdependency of the wdio-cucumber-framework is not installed)
