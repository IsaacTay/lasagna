#let view-layer(tags: (), prefix: "lasagna_") = {
  let has-common(array1, array2) = array1.filter((elem1) => {array2.contains(elem1)}).len() > 0
  let shown-tags = tags

  if (shown-tags == none) {
    shown-tags = false
  }

  if type(shown-tags) == str {
    shown-tags = (shown-tags, )
  } else if type(shown-tags) == bool {
    has-common = (a1, a2) => shown-tags
    shown-tags = ()
  }
  shown-tags = shown-tags.map(t => prefix + t)


  let layer(tags, body) = {

    if type(tags) == str {
      tags = (tags,)
    }
    tags = tags.map(t => prefix + t)

    if has-common(tags, shown-tags) {
      return metadata(tags) + body
    }
    return none
  }

  return layer
}

