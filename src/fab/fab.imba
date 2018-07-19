import {MDCRipple} from '@material/ripple';
import "@material/fab/mdc-fab.scss"
import {Icon} from "../icon/icon"

export tag Fab < button
  prop ripple
  prop mini
  prop extended
  prop text
  prop icon
  prop iconColor

  def mount
    if @ripple
      MDCRipple.new @dom
      Imba.commit

  def render
    <self .mdc-fab
      .mdc-fab--mini=@mini
      .mdc-fab--extended=@extended
    >
      <span .mdc-fab__icon>
        <Icon icon=@icon color=iconColor>
      if @extended
        <span .mdc-fab__label> @text
