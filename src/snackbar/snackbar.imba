import {MDCSnackbar} from "@material/snackbar"
import "@material/snackbar/mdc-snackbar.scss"

export tag Snackbar
  prop show
  prop showing
  prop text
  prop timeout
  prop actionText
  prop multiline
  prop actionOnBottom

  def show
    # Show if we have a snackbar but not if we're already showing
    if @snackbar && !@showing
      var showData = {
        message: @text || " "
        timeout: @timeout
        multiline: @multiline
      }

      if @actionText
        showData:actionOnBottom = @actionOnBottom
        showData:actionText = @actionText
        showData:actionHandler = do
          trigger('action')

      @snackbar.show showData

  def build
    @timeout = 2750

  def mount
    @snackbar = MDCSnackbar.new @dom
    @dom.addEventListener "MDCSnackbar:show", do
      @showing = true
      Imba.commit

    @dom.addEventListener "MDCSnackbar:hide", do
      @showing = false
      if data
        data:show = false
      Imba.commit

    Imba.commit

  def render
    if @show || (data && data:show)
      show

    <self.mdc-snackbar>
      <div.mdc-snackbar__text>
      <div.mdc-snackbar__action-wrapper>
        <button.mdc-snackbar__action-button type="button">
