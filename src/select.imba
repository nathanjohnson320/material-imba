import {MDCSelect} from "@material/select"
import "@material/list/mdc-list.scss";
import "@material/menu-surface/mdc-menu-surface.scss";
import "@material/menu/mdc-menu.scss";
import "@material/select/mdc-select.scss";

tag mtl-select
  @options = []
  @label
  @disabled
  @box
  @outline
  @model = {}

  def mount
    @select = MDCSelect.new self.children[0]
    self.addEventListener "MDCSelect:change", do
      if @model
        @model.selectedIndex = @select.selectedIndex
        @model.selected = @select.value

  def isSelected option
    @model.selected == option.value

  def render
    <self>
      <div .mdc-select
        .mdc-select--box=@box
        .mdc-select--outlined=@outline
        .mdc-select--disabled=@disabled
      >
        <div .mdc-select__anchor>
          <i .mdc-select__dropdown-icon>
          <div .mdc-select__selected-text>
          <span .mdc-floating-label>
            @label
          <div .mdc-line-ripple>

        <div .mdc-select__menu.mdc-menu.mdc-menu-surface>
          <ul .mdc-list>
            for option in @options
              <li
                .mdc-list-item
                .mdc-list-item--selected=@isSelected(option)
                .mdc-list-item--disabled=option.disabled
                data-value=option.value
                aria-selected=@isSelected(option)
              >
                option.text