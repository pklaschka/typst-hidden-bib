#import "lib.typ": *

== Hidden Bibliographies

In some documents, such as a letter, you may want to cite a reference without printing a bibliography.

This can easily be achieved by using the `hidden-bibliography` function instead of `bibliography` after importing the `hidden-bib` package. @hidden-bib

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-bibliography

#lorem(20) @example1
#lorem(40) @example2[p. 2]

#hidden-bibliography("/refs.yml")
```

#lorem(20) @example1
#lorem(40) @example2[p. 2]

*Note that this automatically sets the `style` option to `"chicago-notes"` unless you specify a different style.*

=== Relative Paths

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

#hidden-bibliography("/refs.yml")