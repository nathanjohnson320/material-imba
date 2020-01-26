import "@material/card/mdc-card.scss"

tag mtl-card-icons < div
  def render
    <self.mdc-card__action-icons>
      <slot>

tag mtl-card-primary < div
  def render
    <self.mdc-card__primary-action>
      <slot>

tag mtl-card-actions < div
  def hasButtons
    self.__slots.buttons

  def hasIcons
    self.__slots.icons

  def render
    <self.mdc-card__actions>
      if @hasButtons()
        <div.mdc-card__action-buttons>
          <slot name="buttons">
      if @hasIcons()
        <div.mdc-card__action-icons>
          <slot name="icons">

tag mtl-card-media < div
  @x169 = false
  @square = false

  def render
    <self
      .mdc-card__media
      .mdc-card__media--16-9=@x169
      .mdc-card__media--square=@square
    >
      <div class="mdc-card__media-content">
        <slot>

tag mtl-card
  @outlined = false
  @width = "250px"
  @height = "250px"

  def render
    <self
      .mdc-card
      .mdc-card--outlined=@outlined
      css:width=@width
      css:height=@height
    >
      <slot>

