import {FormField} from "../form-field/form-field"
import "@material/checkbox/mdc-checkbox.scss"

export tag Checkbox
  prop label
  prop checked
  prop disabled

  def build
    data = {}

  def isDisabled
    (data && data:disabled) || @disabled

  def render
    <self>
      <FormField>
        <div
          .mdc-checkbox
          .mdc-checkbox--disabled=isDisabled
        >
          <input type="checkbox"
            [data:checked]
            .mdc-checkbox__native-control
            disabled=isDisabled
          >
          <div .mdc-checkbox__background>
            <svg:svg .mdc-checkbox__checkmark
              viewBox="0 0 24 24"
            >
              <svg:path .mdc-checkbox__checkmark-path
                fill="none"
                d="M1.73,12.91 8.1,19.28 22.79,4.59"
              >
            <div .mdc-checkbox__mixedmark>
        <label> @label
