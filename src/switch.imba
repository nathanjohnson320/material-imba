import "@material/switch/mdc-switch.scss"

tag mtl-switch
  @disabled
  @id
  @label

  def build
    if !@model
      @model = {}

  def isDisabled
    @disabled || (@model && @model.disabled)

  def render
    <self>
      <div
        .mdc-switch
        .mdc-switch--disabled=@isDisabled()
        .mdc-switch--checked=@model.toggled
      >
        <div.mdc-switch__track>
        <div.mdc-switch__thumb-underlay>
          <div.mdc-switch__thumb>
            <input[@model.toggled]
              .mdc-switch__native-control
              type="checkbox" id=@id  role="switch"
              disabled=@isDisabled()
            >
      <label for=@id> @label
