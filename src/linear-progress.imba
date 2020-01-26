import {MDCLinearProgress} from '@material/linear-progress'
import "@material/linear-progress/mdc-linear-progress.scss"

tag mtl-linear-progress < div
  @open = true
  @reversed
  @indeterminate
  @progress = 0
  @buffer = 1

  def setprogress
    if @progressbar && @progress
      @progressbar.progress = @progress

    if @progressbar && @model && @model.progress >= 0
      @progressbar.progress = @model.progress

  def setbuffer
    if @progressbar && @buffer
      @progressbar.buffer = @buffer

    if @progressbar && @model && @model.buffer >= 0
      @progressbar.buffer = @model.buffer

  def isopen
    @open || (@model && @model.open)

  def mount
    @progressbar = MDCLinearProgress.new self
    @setprogress()
    @setbuffer()

  def render
    @setprogress()
    @setbuffer()

    <self
      .mdc-linear-progress
      .mdc-linear-progress--closed=!@isopen()
      .mdc-linear-progress--reversed=@reversed
      .mdc-linear-progress--indeterminate=@indeterminate
      role="progressbar"
    >
      <div .mdc-linear-progress__buffering-dots>
      <div .mdc-linear-progress__buffer>
      <div .mdc-linear-progress__bar.mdc-linear-progress__primary-bar>
        <span .mdc-linear-progress__bar-inner>
      <div .mdc-linear-progress__bar.mdc-linear-progress__secondary-bar>
        <span .mdc-linear-progress__bar-inner>