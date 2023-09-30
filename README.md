# Typst Hidden-Bib

[GitHub Repository including Examples](https://github.com/pklaschka/typst-hidden-bib)

A Typst package to create hidden bibliographies or bibliographies with unmentioned (hidden) citations.

## Use Cases

### Hidden Bibliographies

In some documents, such as a letter, you may want to cite a reference without printing a bibliography.

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-bibliography

#lorem(20) @example1
#lorem(40) @example2[p. 2]

#hidden-bibliography("/refs.yml")
```

*Note that this automatically sets the `style` option to `"chicago-notes"` unless you specify a different style.*

### Relative Paths in Hidden Bibliographies

Due to the way Typst's `bibliography` function works, you can't use relative paths for the bibliography file with the new function. This is because the `bibliography` function is evaluated relative to the file it is called from, which in this case is the package file that's stored in a different location.

We therefore recommend using an absolute path (from the Typst root directory) like `"/refs.bib"`.

If that, for some reason, is not possible, you can use the exported `truly-hidden` function with a bibliography like this:

```typ
#import "@preview/hidden-bib:0.1.0": truly-hidden

#truly-hidden(
	bibliography("refs.yml", style: "chicago-notes")
)
```

This is equivalent to what the `hidden-bibliography` function does, but it allows you to use relative paths since you're now calling the `bibliography` function from your source file again.

### Hidden Citations

In some documents, it may be necessary to include items in your bibliography which weren't explicitly cited at any specific point in your document.

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-cite

#hidden-cite("example1")
```

### Multiple Hidden Citations

If you want to include a large number of items in your bibliography without having to use `hidden-cite` (to still get autocompletion in the web editor), you can use the `hidden-citations` environment.

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-citations

#hidden-citations[
	@example1
	@example2
]
```

## FAQ

### Why would I want to have hidden citations and a hidden bibliography?

You don't. While this package solves both (related) problems, you should only use one of them at a time. Otherwise, you'll simply see nothing at all.

### Why would I want to have hidden citations?

That's for you to decide. It essentially enables you to include "uncited references", similar to LaTeX's `\nocite{}` command.

## License

This package is licensed under the MIT license. See the [LICENSE](./LICENSE) file for details.