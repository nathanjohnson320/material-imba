import {MDCRipple} from '@material/ripple'
import "@material/icon-button/mdc-icon-button.scss"
import {Icon} from '../icon/icon'

export tag IconButton < button
  prop onicon
  prop officon
  prop toggle
  prop ripple
  prop color

  def mount
    if @ripple
      var iconButtonRipple = MDCRipple.new @dom
      iconButtonRipple:unbounded = true

  def toggle
    if @toggle
      data:toggled = !data:toggled

  def render
    var icon = @onicon
    var inverted = @toggle && !data:toggled
    # If we're in toggle mode but toggle is false
    if inverted
      icon = @officon

    <self .mdc-icon-button
      :click="toggle"
    >
      <Icon icon=icon invert=inverted color=@color>
