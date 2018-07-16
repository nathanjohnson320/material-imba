import {MDCLinearProgress} from '@material/linear-progress'
import "@material/linear-progress/mdc-linear-progress.scss"

export tag LinearProgress
  prop open
  prop reversed
  prop indeterminate
  prop progress
  prop buffer

  def build
    @progress = 0
    @buffer = 1

  def setprogress
    if @progressbar && @progress
      @progressbar:progress = @progress

  def setbuffer
    if @progressbar && @buffer
      @progressbar:buffer = @buffer

  def mount
    @progressbar = MDCLinearProgress.new @dom
    setprogress
    setbuffer

  def render
    setprogress
    setbuffer

    <self.mdc-linear-progress role="progressbar"
      .mdc-linear-progress--closed=!@open
      .mdc-linear-progress--reversed=@reversed
      .mdc-linear-progress--indeterminate=@indeterminate
    >
      <div .mdc-linear-progress__buffering-dots>
      <div .mdc-linear-progress__buffer>
      <div .mdc-linear-progress__bar.mdc-linear-progress__primary-bar>
        <span .mdc-linear-progress__bar-inner>
      <div .mdc-linear-progress__bar.mdc-linear-progress__secondary-bar>
        <span .mdc-linear-progress__bar-inner>
