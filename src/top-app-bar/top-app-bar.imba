import {MDCTopAppBar} from '@material/top-app-bar/index'
import "@material/top-app-bar/mdc-top-app-bar.scss"

export tag AppBarTitle < span
  def render
    <self .mdc-top-app-bar__title> @text

export tag TopAppBar < header
  prop title

  def menu
    <@menu>
      <AppBarTitle> "Application Title"

  def actions
    <@actions>
      <a .material-icons.mdc-top-app-bar__action-item href="#"> "X"

  def render
    <self .mdc-top-app-bar>
      <div .mdc-top-app-bar__row>
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-start>
          menu
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-end role="toolbar">
          actions

