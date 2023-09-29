#import "lib.typ": *

== Hidden Citations

In some documents, it may be necessary to include items in your bibliography which weren't explicitly cited at any specific point in your document. This can easily be achieved by using the `hidden-cite` function instead of `cite` after importing the `hidden-bib` package. @hidden-bib[`hidden-cite` function]

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-cite

#hidden-cite("example1")
```
#hidden-cite("example1")

=== Multiple Hidden Citations

If you want to include a large number of items in your bibliography without having to use `hidden-cite` (to still get autocompletion in the web editor), you can use the `hidden-citations` environment. @hidden-bib

The code then looks like this:

```typ
#import "@preview/hidden-bib:0.1.0": hidden-citations

#hidden-citations[
	@example1
	@example2
]
```

#hidden-citations[
	@example1
	@example2
]

#bibliography("refs.yml", style: "chicago-author-date")