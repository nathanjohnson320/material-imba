import {MDCRipple} from '@material/ripple'
import '@material/button/mdc-button.scss'
import {Icon} from '../icon/icon'

export tag Button
  prop raised
  prop flat
  prop outlined
  prop disabled
  prop ripple
  prop text
  prop icon
  prop iconColor

  def mount
    if @ripple
      MDCRipple.new @dom:children[0]
      Imba.commit

  def isDisabled
    (data && data:disabled) || @disabled

  def render
    <self>
      <button
        .mdc-button
        .mdc-button--raised=@raised
        .mdc-button--outlined=@outlined
        .mdc-button--unelevated=@flat
        disabled=isDisabled
      >
        if @icon
          <Icon icon=@icon inbutton=true color=@iconColor>
        @text

