import {MDCSnackbar} from "@material/snackbar"
import "@material/snackbar/mdc-snackbar.scss"
import "./button"

tag mtl-snackbar
  @actionText
  @label
  @open
  @showing
  @stacked = false
  @timeout = 4000

  def show
    # Show if we have a snackbar but not if we're already showing
    if @snackbar && !@showing
      @snackbar.open();

  def mount
    @snackbar = MDCSnackbar.new self.children[0]
    @snackbar.timeoutMs = @timeout
    @snackbar.labelText = @label
    if @actionText
      @snackbar.actionButtonText = @actionText

    self.children[0].addEventListener "MDCSnackbar:opened", do
      @showing = true
    self.children[0].addEventListener "MDCSnackbar:closed", do
      @showing = false
      if @model
        @model.open = false

  def render
    if @open || (@model && @model.open)
      self.show()

    <self>
      <div
        .mdc-snackbar
        .mdc-snackbar--stacked=@stacked
      >
        <div .mdc-snackbar__surface>
          <div .mdc-snackbar__label
            role="status"
            aria-live="polite"
          >
          if @actionText
            <div .mdc-snackbar__actions>
              <mtl-button snackbar=true> @actionText
