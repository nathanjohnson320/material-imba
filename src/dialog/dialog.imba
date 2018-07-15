import {MDCDialog} from '@material/dialog'
import "@material/dialog/mdc-dialog.scss"

export tag DialogActionButton < button
  prop accept
  prop cancel

  def render
    <self
      .mdc-button
      .mdc-dialog__footer__button
      .mdc-dialog__footer__button--cancel=@cancel
      .mdc-dialog__footer__button--accept=@accept
    >
      @text

export tag Dialog < aside
  prop open
  prop scrollable

  def mount
    @dialog = MDCDialog.new @dom
    if @open
      @dialog.show

    @dom.addEventListener "MDCDialog:cancel", do
      @open = false
      data:open = false
      trigger "dialogstate", {accepted: false}
      Imba.commit

    @dom.addEventListener "MDCDialog:accept", do
      @open = false
      data:open = false
      trigger "dialogstate", {accepted: true}
      Imba.commit

  def header
    false

  def body
    false

  def footer
    false

  def render
    if @dialog && (@open || data:open)
      @dialog.show

    <self
      .mdc-dialog
      role="alertdialog"
    >
      <div .mdc-dialog__surface>
        if header
          <header .mdc-dialog__header>
            <h2 .mdc-dialog__header__title>
              header

        if body
          <section .mdc-dialog__body
            .mdc-dialog__body--scrollable=@scrollable
          >
            body

        if footer
          <footer .mdc-dialog__footer>
            footer
      <div .mdc-dialog__backdrop>
