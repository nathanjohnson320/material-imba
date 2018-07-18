import {MDCChipSet} from "@material/chips"
import "@material/chips/mdc-chips.scss"
import {Icon} from "../icon/icon"

export tag Chip
  prop index
  prop text
  prop leadingicon
  prop trailingicon
  prop filter

  def render
    <self.mdc-chip tabindex=@index>
      if @leadingicon
        <Icon icon=@leadingicon chip=true leading=true>

      if @filter
        <div .mdc-chip__checkmark>
          <svg:svg .mdc-chip__checkmark-svg viewBox="-2 -3 30 30">
            <svg:path .mdc-chip__checkmark-path
              fill="none"
              stroke="black"
              d="M1.73,12.91 8.1,19.28 22.79,4.59">

      <div .mdc-chip__text> @text

      if @trailingicon
        <Icon icon=@trailingicon chip=true trailing=true>

export tag Chips
  prop items
  prop choice
  prop filter
  prop selected

  def build
    @items = []
    if !data
      data = { selected: [] }

  def mount
    @chipset = MDCChipSet.new @dom
    Imba.commit

  def select index
    if @choice
      # Choice only has one at a time, if you select
      # the same one it gets unselected
      if data:selected == @items[index]
        data:selected = null
      else
        data:selected = @items[index]
    if @filter && Array.isArray data:selected
      # Filter allows for multiple selection
      # So selected will be all the indexes that
      # have been selected
      var i = data:selected.indexOf index
      if i >= 0
        data:selected.splice i, 1
      else
        data:selected.push index

    # Bubble up an event with the selected thing
    trigger('select', @items[index])

  def render
    <self.mdc-chip-set
      .mdc-chip-set--choice=@choice
      .mdc-chip-set--filter=@filter
    >
      for item,index in @items
        <Chip
          :click=["select", index]
          filter=@filter
          index=index
          text=item:text
          leadingicon=(item:leading && item:icon)
          trailingicon=(item:trailing && item:icon)
        >
