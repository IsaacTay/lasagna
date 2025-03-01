#import "@local/lasagna:0.2.0": *

#let layer = view-layer(tags: true)

All tags should show:
#layer("tag1")[- tag1]
#layer("tag2")[- tag2]
#layer("tag3")[- tag3]

#let layer = view-layer(tags: false)

No tags should show:
#layer("tag1")[- tag1]
#layer("tag2")[- tag2]
#layer("tag3")[- tag3]
