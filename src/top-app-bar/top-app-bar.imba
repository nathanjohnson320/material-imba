import {MDCTopAppBar} from '@material/top-app-bar/index'
import "@material/top-app-bar/mdc-top-app-bar.scss"

export tag AppBarTitle
  def render
    <self .mdc-top-app-bar__title> @text

export tag TopAppBar < header
  def menu
    <@menu>
      <AppBarTitle> "Application Title"

  def actions
    <@actions>
      <a .material-icons.mdc-top-app-bar__action-item href="#"> ""

  def render
    <self .mdc-top-app-bar>
      <div .mdc-top-app-bar__row>
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-start>
          menu
        <section .mdc-top-app-bar__section.mdc-top-app-bar__section--align-end role="toolbar">
          actions

