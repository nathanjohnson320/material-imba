import {ButtonPage} from './pages/button'
import {CardPage} from './pages/card'

var base = "/material-imba"

export tag ComponentView
  def render
    <self>
      <ButtonPage[data:button] route="{base}/button">
      <CardPage[data:card] route="{base}/card">