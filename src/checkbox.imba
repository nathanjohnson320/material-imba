import "./form-field"
import "@material/checkbox/mdc-checkbox.scss"

tag mtl-checkbox
  @label
  @checked
  @disabled

  def isDisabled
    (@model && @model.disabled) || @disabled

  def render
    <self>
      <mtl-form-field>
        <div
          .mdc-checkbox
          .mdc-checkbox--disabled=@isDisabled()
        >
          <input type="checkbox"
            [@model.checked]
            .mdc-checkbox__native-control
            disabled=@isDisabled()
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