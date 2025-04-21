# Setup Whitespace

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-whitespace-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/setup-whitespace-action/actions/workflows/functional-tests.yml/badge.svg)
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

## Prerequisites

None.

## Inputs

```yaml
- uses: fabasoad/setup-whitespace-action@v1
  with:
    # (Optional) If "true" it installs wspace even if it is already installed on
    # a runner. Otherwise, skips installation. Defaults to false.
    force: "false"
    # (Optional) GitHub token that is used to send requests to GitHub API.
    # Defaults to the token provided by GitHub Actions environment.
    github-token: "${{ github.token }}"
```

## Outputs

<!-- prettier-ignore-start -->
| Name      | Description                         | Example |
|-----------|-------------------------------------|---------|
| installed | Whether wspace was installed or not | `true`  |
<!-- prettier-ignore-end -->

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

## Contributions

![Alt](https://repobeats.axiom.co/api/embed/de85087d6bfdec06350fc6803fee9c1b435a0b11.svg "Repobeats analytics image")
