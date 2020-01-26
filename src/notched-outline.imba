import {MDCNotchedOutline} from '@material/notched-outline'
import "@material/notched-outline/mdc-notched-outline.scss"

tag mtl-notched
  @id
  @label

  def mount
    MDCNotchedOutline.new self.children[0]

  def render
    <self>
      <div.mdc-notched-outline>
        <div.mdc-notched-outline__leading>
        <div.mdc-notched-outline__notch>
          if @label
            <label.mdc-floating-label for=@id> @label
        <div.mdc-notched-outline__trailing>
