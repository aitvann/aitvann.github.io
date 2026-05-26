# My Resume

My awesome resume is built on [jsonresume](https://jsonresume.org/) and
[typst](https://github.com/typst/typst) but instead of building it with json, I've chosen to use
[nix](https://nixos.org) with this project
[jsonresume-nix](https://github.com/TaserudConsulting/jsonresume-nix) by [Taserud
Consulting](https://taserud.net).

## Convert JSON to Nix

Nix language is much more pleasant to write. To convert use:

``` sh
nix-instantiate --eval --expr 'builtins.fromJSON (builtins.readFile "/fullpath/resume.json")'
```

## Pipeline

The whole pipeline consists of three steps:

1.  Nix. Because it's a nice way to define data
2.  Json. Because this is what [jsonresume](https://jsonresume.org/) uses, a standard
3.  Pdf or Html. Because this is the nicest way to view media

## Workflow

Since there are quite a few steps the workflow is special

### JsonResume

`nix run .#jsonresume-live` handles both steps

### Typst

With typst it's a bit more involved: `nix run .#typst-live` will only handle the `json -> html`
part. So in order to get live typst preview you unfortunately have to run both jobs:
`jsonresume-live` and `typst-live`.
