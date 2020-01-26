import {MDCRipple} from '@material/ripple';
import "@material/fab/mdc-fab.scss"
import "./icon"

tag mtl-fab
  @ripple
  @mini
  @extended
  @text
  @icon
  @iconColor

  def mount
    if @ripple
      MDCRipple.new self

  def render
    <self
      .mdc-fab
      .mdc-fab--mini=@mini
      .mdc-fab--extended=@extended
    >
      if @ripple
        <div .mdc-fab__ripple>
      <span .mdc-fab__icon>
        <mtl-icon icon=@icon color=@iconColor>
      if @extended
        <span .mdc-fab__label> @text