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

    if @progressbar && data && data:progress >= 0
      @progressbar:progress = data:progress

  def setbuffer
    if @progressbar && @buffer
      @progressbar:buffer = @buffer

    if @progressbar && data && data:buffer >= 0
      @progressbar:buffer = data:buffer

  def isopen
    @open || (data && data:open)

  def mount
    @progressbar = MDCLinearProgress.new @dom
    setprogress
    setbuffer

  def render
    setprogress
    setbuffer

    <self.mdc-linear-progress role="progressbar"
      .mdc-linear-progress--closed=!isopen
      .mdc-linear-progress--reversed=@reversed
      .mdc-linear-progress--indeterminate=@indeterminate
    >
      <div .mdc-linear-progress__buffering-dots>
      <div .mdc-linear-progress__buffer>
      <div .mdc-linear-progress__bar.mdc-linear-progress__primary-bar>
        <span .mdc-linear-progress__bar-inner>
      <div .mdc-linear-progress__bar.mdc-linear-progress__secondary-bar>
        <span .mdc-linear-progress__bar-inner>
