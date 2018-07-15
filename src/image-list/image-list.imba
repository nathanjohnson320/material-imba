import "@material/image-list/mdc-image-list.scss"

export tag ImageList < ul
  prop items
  prop masonry

  def render
    <self.mdc-image-list
      .mdc-image-list--masonry=@masonry
    >
      for item in @items
        <li .mdc-image-list__item>
          if !@masonry
            <div .mdc-image-list__image-aspect-container>
              <img .mdc-image-list__image src=item:src>
          else
            <img .mdc-image-list__image src=item:src>
          <div .mdc-image-list__supporting>
            <span .mdc-image-list__label> item:label
