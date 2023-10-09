#import "lib.typ": *

== Hidden Bibliographies

#outline()

In some documents, such as a letter, you may want to cite a reference without printing a bibliography.

This can easily be achieved by wrapping your `bibliography(...)` with the `hidden-bibliography` function after importing the `hidden-bib` package. @hidden-bib

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-bibliography

#lorem(20) @example1
#lorem(40) @example2[p. 2]

#hidden-bibliography(
	bibliography("/refs.yml")
)
```

#lorem(20) @example1
#lorem(40) @example2[p. 2]

*Note that this automatically sets the `style` option to `"chicago-notes"` unless you specify a different style.*

#hidden-bibliography(
	bibliography("refs.yml")
)

== Another section that appears in the outline

#lorem(30)
