
import { sizes, light, dark, mdInactive } from './mapping'
import './index.css';

export var Sizes = sizes

export tag Icon
  prop icon
  prop size
  prop invert
  prop inactive
  prop color
  prop inbutton

  def render
    @color ?= ''
    var sizeMapped = @size || sizes:small
    var defaultColor = @invert ? light : dark
    var inactiveColor = @inactive ? mdInactive : '';

    <self>
      <i
        .material-icons
        .{sizeMapped}
        .{defaultColor}
        .{inactiveColor}
        .mdc-button__icon=@inbutton
        css:color=@color
        css:fontSize=sizeMapped
      > @icon


