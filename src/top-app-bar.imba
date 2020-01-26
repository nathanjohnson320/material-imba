import {MDCTopAppBar} from '@material/top-app-bar/index'
import "@material/top-app-bar/mdc-top-app-bar.scss"

tag mtl-app-bar-title
  def render
    <self .mdc-top-app-bar__title>
      <slot>

tag mtl-top-app-bar < header
  @short = false
  @fixed = false

  def render
    <self
      .mdc-top-app-bar
      .mdc-top-app-bar--short=@short
      .mdc-top-app-bar--fixed=@fixed
    >
      <div .mdc-top-app-bar__row>
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-start>
          <slot name="menu">
            <mtl-app-bar-title> "Application Title"
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-end role="toolbar">
          <slot name="actions">
            <a .material-icons.mdc-top-app-bar__action-item href="#"> ""