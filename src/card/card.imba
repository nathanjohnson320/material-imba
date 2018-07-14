import "@material/card/mdc-card.scss"

export tag Card
  prop outlined
  prop width
  prop height

  def build
    @width = "250px"
    @height = "250px"

  def body
    <@body>
      <div>

  def actions
    <@actions>
      <div>

  def render
    <self
      .mdc-card
      .mdc-card--outlined=@outlined
      css:width=@width
      css:height=@height
    >
      <div .mdc-card__content>
        body

      if actions
        <div .mdc-card__actions>
          <div .mdc-card__action-buttons>
            actions
