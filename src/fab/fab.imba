import {MDCRipple} from '@material/ripple';
import "@material/fab/mdc-fab.scss"

export tag Fab < button
  prop ripple
  prop mini
  prop extended
  prop text

  def mount
    if @ripple
      MDCRipple.new @dom
      Imba.commit

  def render
    <self .mdc-fab
      .mdc-fab--mini=@mini
      .mdc-fab--extended=@extended
    >
      <span .mdc-fab__icon.material-icons> "favorite"
      if @extended
        <span .mdc-fab__label> @text
