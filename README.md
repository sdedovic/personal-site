# My New<sup>\*\*</sup> Personal Site
## Installation Instructions
### Ruby

Make sure jekyll and bundler gems are installed with:

```bash
gem install jekyll bundler

bundle install
```

### Nix
If direnv is installed, simply run:
```bash
direnv allow
```

Otherwise:
```bash
nix-shell
```

## Running
Serve locally with:

```bash
bundle exec jekyll serve
```

## Building

Build for distribution with:

```bash
JEKYLL_ENV=production bundle exec jekyll build
```

## Making Changes
If any new gems are added or existing gems upgraded, i.e. the `Gemfile.lock` is modified, the `gemset.nix` file must be update to keep Nix up to date. This is the easiest way to do that:
```
nix-shell -p bundix

bundix
```
