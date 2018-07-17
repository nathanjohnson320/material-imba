import {MDCNotchedOutline} from '@material/notched-outline'
import "@material/notched-outline/mdc-notched-outline.scss"

export tag Notched
  def mount
    MDCNotchedOutline.new @dom:children[0]
    Imba.commit

  def render
    <self>
      <div .mdc-notched-outline>
        <svg:svg>
          <svg:path .mdc-notched-outline__path>
      <div .mdc-notched-outline__idle>
