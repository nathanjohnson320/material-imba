import '@material/layout-grid/mdc-layout-grid.scss'

export tag Grid
  def render
    <self.mdc-layout-grid>
      @content

export tag Column
  prop width

  def widthClass
    @width ?= 1
    "mdc-layout-grid__cell--span-{@width}"

  def render
    <self.mdc-layout-grid__cell
      .{widthClass}>
      @content

export tag Row
  def render
    <self.mdc-layout-grid__inner>
      @content