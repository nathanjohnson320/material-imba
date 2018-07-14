import {MDCTemporaryDrawer} from '@material/drawer'
import '@material/drawer/mdc-drawer.scss'

export tag Drawer < aside
  prop open

  def header
    false

  def body
    <@body>
      <div> "My content"

  def mount
    @drawer = MDCTemporaryDrawer.new @dom
    @dom.addEventListener "MDCTemporaryDrawer:close", do
      trigger("drawerstate", {open: false})

  def render
    if @drawer
      @drawer:open = @open

    <self.mdc-drawer.mdc-drawer--temporary.mdc-typography>
      <nav .mdc-drawer__drawer>
        if header
          <header .mdc-drawer__header>
            <div .mdc-drawer__header-content>
              header
        <nav .mdc-drawer__content.mdc-list>
          body
