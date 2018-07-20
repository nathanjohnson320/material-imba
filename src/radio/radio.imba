import {FormField} from "../form-field/form-field"
import {MDCRadio} from "@material/radio"
import "@material/radio/mdc-radio.scss"

export tag RadioGroup
  prop name
  prop items
  prop ripple

  def render
    <self>
      for item in @items
        <Radio[data] value=item:value label=item:label name=@name ripple=@ripple>

export tag Radio
  prop id
  prop name
  prop checked
  prop label
  prop ripple
  prop value

  def generateid
    Math.random().toString(36).replace(/[^a-z]+/g, '').substr(0, 5)

  def build
    @id = generateid
    if !data
      data = { checked: false }

  def mount
    if @ripple
      @radio = MDCRadio.new @dom:children[0]:children[0]

  def render
    <self>
      <FormField>
        <div .mdc-radio>
          <input
            .mdc-radio__native-control
            [data:checked]
            type="radio"
            name=@name
            id=@id
            value=(@value || (data && data:value))
          >
          <div .mdc-radio__background>
            <div .mdc-radio__outer-circle>
            <div .mdc-radio__inner-circle>
        <label for=@id> @label
