# My Resume

This is my resume. Renders:

- https://aitvann.github.io/en -- English HTML version
- https://aitvann.github.io/en/Rust_Ivan_Aitzhanov.pdf -- English PDF version
- https://aitvann.github.io/ru -- Russian HTML version
- https://aitvann.github.io/ru/Rust_Ivan_Aitzhanov.pdf -- Russian PDF version

## Features

1.  **Declarative**: all resume data lives inside `resumes/$lang/resume.json`.
2.  **Easy to Edit**: [Nix](https://nix.dev/tutorials/nix-language.html) is very straightforward.
    to edit. Use [NixD](https://github.com/nix-community/nixd) and
    [alejandra](https://github.com/kamadorueda/alejandra) to get full IDE experience. It is then
    converted to JSON.
3.  **Multilingual**: Support for English and Russian.
4.  **HTML View**: HTML is generated with help of JsonResume project.
5.  **PDF View**: PDF is generated with help of [typst](https://github.com/typst/typst) project.
6.  **Live Editing**: See [workflow](#workflow).
7.  **Automatic**: Resume gets rendered in a GitHub Actions pipeline.

## Convert JSON to Nix

Nix language is much more pleasant to edit. To migrate to it from JSON use:

``` sh
nix-instantiate --eval --expr 'builtins.fromJSON (builtins.readFile "/fullpath/resume.json")'
```

## Pipeline

The whole pipeline consists of three steps:

1.  Nix. Because it's a nice way to define data.
2.  Json. Because this is what [jsonresume](https://jsonresume.org/) uses, a standard.
3.  Pdf or Html. Because this is the nicest way to view media.

## Workflow

Since there are quite a few steps in the [pipeline](#pipeline) the workflow for live editing is
special.

### JsonResume

`nix run .#jsonresume-live` handles both steps

### Typst

With typst it's a bit more involved: `nix run .#typst-live` will only handle the `json -> html`
part. So in order to get live typst preview you unfortunately have to run both jobs:
`jsonresume-live` and `typst-live`.

## Credits & Acknowledgments

- https://jsonresume.org -- JsonResume project
- https://github.com/TaserudConsulting/jsonresume-nix -- Integration of Nix with JsonResume
- https://github.com/fruggiero/typst-jsonresume-cv -- inspiration for typst jsonresume parser
