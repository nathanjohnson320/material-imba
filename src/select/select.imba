import {MDCSelect} from "@material/select"
import "@material/select/mdc-select.scss"

export tag Select
  prop options
  prop label
  prop disabled
  prop box
  prop outline

  def build
    @options = []

  def mount
    @select = MDCSelect.new @dom
    @dom.addEventListener "change", do
      if data
        data:selectedIndex = @select:selectedIndex
        data:selected = @select:value
        Imba.commit

  def render
    <self.mdc-select
      .mdc-select--box=@box
      .mdc-select--outlined=@outline
      .mdc-select--disabled=@disabled
    >
      <select .mdc-select__native-control>
        for option in @options
          <option value=option:value disabled=option:disabled>
            option:text
      if @label
        <label .mdc-floating-label> @label
      if @outline
        <div.mdc-notched-outline>
          <svg:svg>
            <svg:path.mdc-notched-outline__path>
        <div.mdc-notched-outline__idle>
      else
        <div .mdc-line-ripple>
