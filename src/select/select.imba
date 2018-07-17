import {MDCSelect} from "@material/select"
import "@material/select/mdc-select.scss"
import {Notched} from "../notched-outline/notched-outline"

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
      <label .mdc-floating-label> @label
      if @outline
        <Notched>
      else
        <div .mdc-line-ripple>
