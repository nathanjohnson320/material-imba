
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
    var sizeMapped = @size || sizes:small
    var defaultColor = @invert ? light : dark
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


