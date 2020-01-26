import {MDCDrawer} from '@material/drawer'
import '@material/drawer/mdc-drawer.scss'

tag mtl-toolbar-spacer < div
  def render
    <self .mdc-drawer__toolbar-spacer>
      <slot>

tag mtl-drawer
  @dismissable = false
  @modal = false

  def mount
    # Only dismissable and modal drawers require instantiation
    if @dismissable || @modal
      @drawer = MDCDrawer.new self.children[0]

      self.addEventListener "MDCDrawer:closed", do
        @model.open = false
      

  def render
    if @drawer
      @drawer.open = @model.open

    <self>
      <aside
        .mdc-drawer
        .mdc-drawer--dismissible=@dismissable
        .mdc-drawer--modal=@modal
      >
        <div .mdc-drawer__header>
          <h3
            .mdc-drawer__title
          >
            <slot name="headertitle">
          <h6 .mdc-drawer__subtitle>
            <slot name="headersubtitle">
        <div .mdc-drawer__content>
          <slot name="content">
      if @modal
        <mtl-drawer-scrim>

tag mtl-drawer-app-content < div
  def render
    <self.mdc-drawer-app-content>
      <slot>

tag mtl-drawer-scrim < div
  def render
    <self.mdc-drawer-scrim>
      <slot>