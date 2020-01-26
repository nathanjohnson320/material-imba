import "./form-field"
import {MDCRadio} from "@material/radio"
import "@material/radio/mdc-radio.scss"

tag mtl-radio-group
  @name
  @items
  @ripple

  def render
    <self>
      for item in @items
        <mtl-radio[@model] value=item.value label=item.label name=@name ripple=@ripple>

tag mtl-radio
  @id
  @name
  @checked
  @label
  @ripple
  @value

  def generateid
    Math.random().toString(36).replace(/[^a-z]+/g, '').substr(0, 5)

  def build
    @id = @generateid()
    if !@model
      @model = { checked: false }

  def mount
    if @ripple
      @radio = MDCRadio.new self.children[0].children[0]

  def render
    <self>
      <mtl-form-field>
        <div .mdc-radio>
          <input
            .mdc-radio__native-control
            [@model.checked]
            type="radio"
            name=@name
            id=@id
            value=(@value || (@model && @model.value))
          >
          <div .mdc-radio__background>
            <div .mdc-radio__outer-circle>
            <div .mdc-radio__inner-circle>
        <label for=@id> @label