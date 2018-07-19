
import { sizes, light, dark, mdInactive } from './mapping'
import './index.css';

export var Sizes = sizes

export tag Icon < i
  prop icon
  prop size
  prop invert
  prop inactive
  prop color
  prop inbutton

  # Chip specific props
  prop chip
  prop trailing
  prop leading

  def render
    @color ?= ''
    # Allow styling via css variables
    var cssStyle = window.getComputedStyle(document:body).getPropertyValue('--mdc-theme-on-secondary')
    var defaultColor
    if !cssStyle
      defaultColor = @invert ? light : dark

    var sizeMapped = @size || sizes:small
    var inactiveColor = @inactive ? mdInactive : '';

    <self
      .material-icons
      .{sizeMapped}
      .{defaultColor}
      .{inactiveColor}
      .mdc-button__icon=@inbutton

      .mdc-chip__icon=@chip
      .mdc-chip__icon--leading=@leading
      .mdc-chip__icon--trailing=@trailing

      css:color=@color
      css:fontSize=sizeMapped
    > @icon


