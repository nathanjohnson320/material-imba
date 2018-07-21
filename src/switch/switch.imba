import "@material/switch/mdc-switch.scss"

export tag Switch
  prop id
  prop label

  def build
    if !data
      data = {}

  def disabled
    data && data:disabled

  def render
    <self>
      <div.mdc-switch>
        <input.mdc-switch__native-control[data:toggled] id=@id type="checkbox" role="switch" disabled=disabled>
        <div.mdc-switch__background>
          <div.mdc-switch__knob>
      <label for=id> @label