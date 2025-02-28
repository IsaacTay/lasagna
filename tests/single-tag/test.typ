#import "@local/lasagna:0.2.0": *

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
