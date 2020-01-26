import {MDCRipple} from '@material/ripple'
import '@material/button/mdc-button.scss'
import './icon'

tag mtl-button
  @card
  @disabled
  @flat
  @icon
  @iconColor
  @outlined
  @raised
  @ripple
  @snackbar
  @text

  def mount
    if @ripple
      MDCRipple.new self.children[0]

  def isDisabled
    (@model && @model.disabled) || @disabled

  def render
    <self>
      <button
        .mdc-button
        .mdc-button--raised=@raised
        .mdc-button--outlined=@outlined
        .mdc-button--unelevated=@flat
        .mdc-card__action=@card
        .mdc-card__action--button=@card
        .mdc-snackbar__action=@snackbar
        disabled=@isDisabled()
      >
        if @ripple
          <div .mdc-button__ripple>
        if @icon
            <mtl-icon icon=@icon inbutton=true color=@iconColor>
        <div .mdc-button__label>
          <slot>



