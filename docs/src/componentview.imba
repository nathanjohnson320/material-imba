import {ButtonPage} from './pages/button'
import {CardPage} from './pages/card'
import {CheckboxPage} from './pages/checkbox'
import {ChipPage} from './pages/chips'

var base = "/material-imba"

export tag ComponentView
  def render
    <self>
      <ButtonPage[data:button] route="{base}/button">
      <CardPage[data:card] route="{base}/card">
      <CheckboxPage[data:checkbox] route="{base}/checkbox">
      <ChipPage[data:chip] route="{base}/chip">