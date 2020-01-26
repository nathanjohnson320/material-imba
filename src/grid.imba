import '@material/layout-grid/mdc-layout-grid.scss'

tag mtl-grid
  def render
    <self.mdc-layout-grid>
      <slot>

tag mtl-column
  @width = 1

  def widthClass
    "mdc-layout-grid__cell--span-{@width}"

  def render
    <self.mdc-layout-grid__cell
      .{@widthClass()}
    >
      <slot>

tag mtl-row
  def render
    <self.mdc-layout-grid__inner>
      <slot>