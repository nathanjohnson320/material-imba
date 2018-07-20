import {MDCMenu} from "@material/menu"
import {Corner} from "@material/menu/constants"
import "@material/menu/mdc-menu.scss"

export var Corners = Corner

export tag MenuAnchor
  def render
    <self.mdc-menu-anchor>

export tag Menu
  prop open
  prop corner
  prop selected
  prop items
  prop quickopen

  def build
    @corner = Corner:BOTTOM_START
    @quickopen = false

  def mount
    @menu = MDCMenu.new @dom
    # Disables the menu animations
    @menu:quickOpen = @quickopen

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
    @dom.addEventListener 'MDCMenu:selected', do |e|
      var detail = e:detail

      data:selected = detail:index
      data:open = false
      @open = false
      Imba.commit

    @dom.addEventListener 'MDCMenu:cancel', do |e|
      if data
        data:open = false
      @open = false
      Imba.commit

  def isopen
    if @menu && data
      @menu:open = data:open
    else if @menu
      @menu:open = @open

  def render
    isopen

    <self .mdc-menu tabindex="-1">
      <ul .mdc-menu__items.mdc-list role="menu">
        for item, index in @items
          <li .mdc-list-item role="menuitem" tabindex=index>
            item
