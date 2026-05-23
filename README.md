# My Resume

My awesome resume is built on [jsonresume](https://jsonresume.org/) but instead of building it
with json, I've chosen to use [nix](https://nixos.org) with this project
[jsonresume-nix](https://github.com/TaserudConsulting/jsonresume-nix) by [Taserud
Consulting](https://taserud.net).

## Convert JSON to Nix

Nix language is much more pleasant to write. To convert use:

``` sh
nix-instantiate --eval --expr 'builtins.fromJSON (builtins.readFile "/fullpath/resume.json")'
```
