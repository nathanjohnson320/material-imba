import {MDCMenu} from "@material/menu"
import {Corner} from "@material/menu-surface/constants"
import "@material/menu/mdc-menu.scss"

export var Corners = Corner

tag mtl-menu-anchor
  def render
    <self.mdc-menu-anchor>
      <slot>

tag mtl-menu < div
  @corner = Corner.BOTTOM_START
  @items
  @open
  @quickopen = false
  @selected

  def mount
    @menu = MDCMenu.new self
    # Disables the menu animations
    @menu.quickOpen = @quickopen

    # Set the corner
    # BOTTOM_END
    # BOTTOM_LEFT
    # BOTTOM_RIGHT
    # BOTTOM_START
    # TOP_END
    # TOP_LEFT
    # TOP_RIGHT
    # TOP_START
    @menu.setAnchorCorner @corner

    # Listen for selected item
    self.addEventListener 'MDCMenu:selected', do |e|
      var detail = e.etail

      @model.selected = detail.index
      @model.open = false
      @open = false
      imba.commit

    self.addEventListener 'MDCMenu:cancel', do |e|
      if data
        @model.open = false
      @open = false
      imba.commit

  def isopen
    if @menu && data
      @menu.open = @model.open
    else if @menu
      @menu.open = @open

  def render
    @isopen()

    <self .mdc-menu .mdc-menu-surface tabindex="-1">
      <ul .mdc-list role="menu" aria-hidden="true" aria-orientation="vertical" tabindex="-1">
        for item, index in @items
          <li .mdc-list-item role="menuitem" tabindex=index>
            item