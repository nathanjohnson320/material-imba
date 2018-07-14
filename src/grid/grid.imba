import '@material/layout-grid/mdc-layout-grid.scss'

export tag Grid
  def render
    <self.mdc-layout-grid>

export tag Column
  prop width

  def build
    @width = 1

  def widthClass
    "mdc-layout-grid__cell--span-{@width}"

  def render
    <self.mdc-layout-grid__cell
      .{widthClass}
    >

export tag Row
  def render
    <self.mdc-layout-grid__inner>
