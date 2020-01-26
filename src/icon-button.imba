import {MDCRipple} from '@material/ripple'
import '@material/icon-button/mdc-icon-button.scss'
import './icon'

tag mtl-icon-button < button
  @onicon
  @officon
  @alwayson
  @ripple
  @color
  @card

  def mount
    if @ripple
      var iconButtonRipple = MDCRipple.new self
      iconButtonRipple.unbounded = true

  def handle
    if !@alwayson
      @model.on = !@model.on

  def render
    var on = @alwayson || @model && @model.on

    <self
      .mdc-icon-button
      .mdc-icon-button--on=on
      aria-hidden=!on
      aria-pressed=on
      :click.handle
    >
      <i .material-icons.mdc-icon-button__icon.mdc-icon-button__icon--on>
        @onicon
      <i .material-icons.mdc-icon-button__icon>
        @officon
