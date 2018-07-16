import "@material/typography/mdc-typography.scss"

export tag Typography
  def render
    <self.mdc-typography>

export tag Headline
  prop level

  def build
    @level = 1

  def typelevel
    "mdc-typography--headline{@level}"

  def render
    <self
      .{typelevel}
    >

export tag Subtitle
  prop level

  def build
    @level = 1

  def typelevel
    "mdc-typography--subtitle{@level}"

  def render
    <self
      .{typelevel}
    >

export tag TypographyBody
  prop level

  def build
    @level = 1

  def typelevel
    "mdc-typography--body{@level}"

  def render
    <self
      .{typelevel}
    >

export tag TypographyCaption
  def render
    <self
      .mdc-typography--caption
    >

export tag TypographyButton
  def render
    <self
      .mdc-typography--button
    >

export tag TypographyOverline
  def render
    <self
      .mdc-typography--overline
    >