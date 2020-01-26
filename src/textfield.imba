import {MDCTextField} from "@material/textfield"
import "@material/textfield/mdc-text-field.scss"
import "./notched-outline"

tag mtl-textfield
  @disabled
  @fullwidth
  @id
  @label
  @outline

  def build
    if !@model
      @model = {
        value: ""
      }

  def mount
    @textfield = MDCTextField.new self.children[0]

  def isdisabled
    @disabled || (@model && @model.disabled)

  def render
    <self>
      <div.mdc-text-field
        .mdc-text-field--fullwidth=@fullwidth
        .mdc-text-field--disabled=@isdisabled()
        .mdc-text-field--outlined=@outline
      >
        <input.mdc-text-field__input
          [@model.value]
          type="text"
          disabled=@isdisabled()
          id=@id
        >
        if !@fullwidth && !@outline
          <label
            .mdc-floating-label
            for=@id
          > @label
        if @outline
          <mtl-notched id=@id label=@label>

        if !@outline
          <div .mdc-line-ripple>

tag mtl-textarea
  @cols = 40
  @disabled
  @fullwidth
  @id
  @label
  @outline
  @rows = 8

  def build
    if !@model
      @model = {
        value: ""
      }

  def mount
    @textfield = MDCTextField.new self.children[0]

  def isdisabled
    @disabled || (@model && @model.disabled)

  def render
    <self>
      <div.mdc-text-field
        .mdc-text-field--textarea
        .mdc-text-field--fullwidth=@fullwidth
        .mdc-text-field--disabled=@isdisabled()
        .mdc-text-field--outlined=@outline
      >
        <textarea.mdc-text-field__input
          [@model.value]
          disabled=@isdisabled()
          id=@id
          rows=@rows
          cols=@cols
        >
        if !@fullwidth && !@outline
          <label
            .mdc-floating-label
            for=@id
          > @label
        if @outline
          <mtl-notched id=@id label=@label>

        if !@outline
          <div .mdc-line-ripple>
