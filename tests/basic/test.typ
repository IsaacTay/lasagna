#import "@local/lasagna:0.2.0": *

= Regular usage
#let layer = view-layer(tags: ("shown"))

This is always shown

#layer("hidden")[So this is hidden]

#layer("shown")[And this is shown]

#layer(("shown", "another-tag"))[You can also assign multiple tags, as long as 1 tag matches it will be shown]

= Prefix test
#let layer = view-layer(tags: ("shown"), prefix: "something_else_")

This is always shown

#layer("hidden")[So this is hidden]

#layer("shown")[And this is shown]

#layer(("shown", "another-tag"))[You can also assign multiple tags, as long as 1 tag matches it will be shown]
