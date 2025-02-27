= Examples

== Basic Usae
```typ
#import "@preview/lasagna:0.1.0": *
#let layer = view-layer(tags: ("shown"))

This is always shown
#layer("hidden")[
    This is hidden
    #layer("shown")[
        But this is shown
    ]
]
#layer(("shown", "another-tag"))[
    You can also assign multiple tags, as long as 1 tag matches it will be shown
]
```

=== Questions with/without answers
```typ
#let layer = view-layer(tags: (
    // use comments to toggle the layers
    "ans-space",
    // "ans",
))

Question 1: What is 2+2?
#layer("ans")[
    4
]
#layer("ans-space")[
    #v()
]

```

=== Wrap other tools
(Using big todo as an example)
```typ
#import "@preview/big-todo:0.2.0": todo
#let layer = view-layer(tags: (
    "todo"
))
#let old-todo = todo
#let todo(..args) = layer("todo", old-todo(..args))
```
