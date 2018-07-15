import {MDCTextField} from "@material/textfield"
# import {MDCNotchedOutline} from '@material/notched-outline'
import "@material/textfield/mdc-text-field.scss"
# import "@material/notched-outline/mdc-notched-outline.scss"

export tag Textfield
  prop label
  prop id
  prop fullwidth
  prop outline
  prop notched
  prop boxed
  prop value
  prop disabled

  def build
    @value = ""

  def mount
    MDCTextField.new @dom
    Imba.commit

  def handleinput e
    @value = e.target.value

  def render
    <self.mdc-text-field
      .mdc-text-field--fullwidth=@fullwidth
      .mdc-text-field--box=@boxed
      .mdc-text-field--disabled=@disabled
    >
      <input.mdc-text-field__input
        type="text"
        :input="handleinput"
        value=@value
        disabled=@disabled
      >
      if !@fullwidth
        <label
          .mdc-floating-label
          for=@id
        > @label
        # if @outline
        #   <Notched>

      <div .mdc-line-ripple>

# export tag Notched
#   def mount
#     MDCNotchedOutline.new @dom:children[0]
#     Imba.commit

#   def render
#     <self>
#       <div .mdc-notched-outline>
#         <svg>
#           <path .mdc-notched-outline__path>
#       <div .mdc-notched-outline__idle>

export tag Textarea
  prop rows
  prop cols
  prop label
  prop value
  prop fullwidth
  prop boxed
  prop disabled

  def build
    @rows = 2
    @cols = 40
    @value = ""

  def mount
    MDCTextField.new @dom
    Imba.commit

  def handleinput e
    @value = e.target.value

  def render
    <self.mdc-text-field.mdc-text-field--textarea
      .mdc-text-field--fullwidth=@fullwidth
      .mdc-text-field--box=@boxed
      .mdc-text-field--disabled=@disabled
    >
      <textarea .mdc-text-field__input rows=rows cols=cols :input="handleinput" value=@value disabled=@disabled>
      if !@fullwidth
        <label .mdc-floating-label> @label
