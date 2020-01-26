import {MDCDialog} from '@material/dialog'
import "@material/dialog/mdc-dialog.scss"

tag mtl-dialog-action-button < button
  @accept
  @cancel

  def render
    <self
      .mdc-button
      .mdc-dialog__footer__button
      .mdc-dialog__footer__button--cancel=@cancel
      .mdc-dialog__footer__button--accept=@accept
    >
      <slot>

tag mtl-dialog
  @scrollable
  @label = ""

  def mount
    @dialog = MDCDialog.new self.children[0]

    self.children[0].addEventListener "MDCDialog:closed", do
      @model.open = false

  def render
    if @dialog && @model && @model.open
      @dialog.open()

    <self>
      <aside
        .mdc-dialog
        role="alertdialog"
        aria-modal="true"
        aria-labelledby=@label
      >
        <div .mdc-dialog__container>
          <div .mdc-dialog__surface>
            <h2 .mdc-dialog__title>
              <slot name="title">

            <div .mdc-dialog__content>
              <slot name="body">

            <footer .mdc-dialog__actions>
              <slot name="footer">
        <div .mdc-dialog__scrim>