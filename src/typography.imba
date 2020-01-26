import "@material/typography/mdc-typography.scss"

tag mtl-typography
  def render
    <self.mdc-typography>
      <slot>

tag mtl-headline
  @level = 1

  def typelevel
    "mdc-typography--headline{@level}"

  def render
    <self
      .{@typelevel()}
    >
      <slot>

tag mtl-subtitle
  @level = 1

  def typelevel
    "mdc-typography--subtitle{@level}"

  def render
    <self
      .{self.typelevel()}
    >
      <slot>

tag mtl-typography-body
  @level = 1

  def typelevel
    "mdc-typography--body{@level}"

  def render
    <self
      .{typelevel}
    >
      <slot>

tag mtl-typography-caption
  def render
    <self
      .mdc-typography--caption
    >
      <slot>

tag mtl-typography-button
  def render
    <self
      .mdc-typography--button
    >
      <slot>

tag mtl-typography-overline
  def render
    <self
      .mdc-typography--overline
    >
      <slot>