import {MDCChipSet} from "@material/chips"
import "@material/chips/mdc-chips.scss"
import "./icon"

tag mtl-chip
  @index
  @text
  @leadingicon
  @trailingicon
  @filter

  def render
    <self.mdc-chip tabindex=@index>
      if @leadingicon
        <mtl-icon icon=@leadingicon chip=true leading=true>

      if @filter
        <div .mdc-chip__checkmark>
          <svg:svg .mdc-chip__checkmark-svg viewBox="-2 -3 30 30">
            <svg:path .mdc-chip__checkmark-path
              fill="none"
              stroke="black"
              d="M1.73,12.91 8.1,19.28 22.79,4.59">

      <div .mdc-chip__text> @text

      if @trailingicon
        <mtl-icon icon=@trailingicon chip=true trailing=true>

tag mtl-chips
  @items = []
  @choice
  @filter
  @selected

  def build
    if !@model
      @model = { selected: [] }

  def mount
    @chipset = MDCChipSet.new self
    imba.commit

  def select index
    if @choice
      # Choice only has one at a time, if you select
      # the same one it gets unselected
      if @model.selected == @items[index]
        @model.selected = null
      else
        @model.selected = @items[index]
    if @filter && Array.isArray @model.selected
      # Filter allows for multiple selection
      # So selected will be all the indexes that
      # have been selected
      var i = @model.selected.indexOf index
      if i >= 0
        @model.selected.splice i, 1
      else
        @model.selected.push index

    # Bubble up an event with the selected thing
    trigger('select', @items[index])

  def render
    <self.mdc-chip-set
      .mdc-chip-set--choice=@choice
      .mdc-chip-set--filter=@filter
    >
      for item,index in @items
        <mtl-chip
          :click=["select", index]
          filter=@filter
          index=index
          text=item.text
          leadingicon=(item.leading && item.icon)
          trailingicon=(item.trailing && item.icon)
        >