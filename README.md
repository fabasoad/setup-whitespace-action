# Setup Whitespace

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-whitespace-action?include_prereleases)
![functional-tests-local](https://github.com/fabasoad/setup-whitespace-action/actions/workflows/functional-tests-local.yml/badge.svg)
![functional-tests-remote](https://github.com/fabasoad/setup-whitespace-action/actions/workflows/functional-tests-remote.yml/badge.svg)
![security](https://github.com/fabasoad/setup-whitespace-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/setup-whitespace-action/actions/workflows/linting.yml/badge.svg)

This action sets up a `wspace` - [Whitespace](https://web.archive.org/web/20150618184706/http://compsoc.dur.ac.uk/whitespace/tutorial.php)
programming language [interpreter](https://github.com/Romejanic/Whitespace).

## Supported OS

<!-- prettier-ignore-start -->
| OS      |                    |
|---------|--------------------|
| Windows | :white_check_mark: |
| Linux   | :white_check_mark: |
| macOS   | :white_check_mark: |
<!-- prettier-ignore-end -->

## Inputs

```yaml
- uses: fabasoad/setup-whitespace-action@v1
  with:
    # (Optional) If "true" it installs swipl even if it is already installed on
    # a runner. Otherwise, skips installation. Defaults to false.
    force: "false"
```

## Outputs

None.

## Example usage

```yaml
name: Setup Whitespace

on: push

jobs:
  setup:
    name: Setup
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: fabasoad/setup-whitespace-action@v1
      - name: Run script
        run: wspace hello-world.ws
```
