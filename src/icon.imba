
import { sizes, light, dark, mdInactive } from './icon/mapping'
import './icon/index.css';

export var Sizes = sizes

tag mtl-icon < i
  @icon
  @size
  @invert
  @inactive
  @color
  @inbutton
  @intab

  # Chip specific props
  @chip
  @trailing
  @leading

  def render
    @color ?= ''
    # Allow styling via css variables
    var cssStyle = window.getComputedStyle(document.body).getPropertyValue('--mdc-theme-on-secondary')
    var defaultColor
    if !cssStyle
      defaultColor = @invert ? light : dark

    var sizeMapped = @size || sizes.small
    var inactiveColor = @inactive ? mdInactive : '';

    <self
      .material-icons
      .{sizeMapped}
      .{defaultColor}
      .{inactiveColor}
      .mdc-button__icon=@inbutton
      .mdc-tab__icon=@intab

      .mdc-chip__icon=@chip
      .mdc-chip__icon--leading=@leading
      .mdc-chip__icon--trailing=@trailing

      css:color=@color
      css:fontSize=sizeMapped
    > @icon


