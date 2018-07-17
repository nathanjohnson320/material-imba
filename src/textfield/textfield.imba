import {MDCTextField} from "@material/textfield"
import "@material/textfield/mdc-text-field.scss"
import {Notched} from "../notched-outline/notched-outline"

export tag Textfield
  prop label
  prop id
  prop fullwidth
  prop outline
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
      .mdc-text-field--outlined=@outline
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
      if @outline
        <Notched>

      if !@outline
        <div .mdc-line-ripple>

export tag Textarea
  prop rows
  prop cols
  prop label
  prop value
  prop fullwidth
  prop boxed
  prop disabled
  prop outline

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
      .mdc-text-field--outlined=@outline
    >
      <textarea .mdc-text-field__input rows=rows cols=cols :input="handleinput" value=@value disabled=@disabled>
      if !@fullwidth
        <label .mdc-floating-label> @label
      if @outline
        <Notched>