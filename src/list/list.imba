import '@material/list/mdc-list.scss'

export tag ListItem < li
  def render
    <self .mdc-list-item>
      @content

export tag List < ul
  def render
    <self .mdc-list>
      @content

export tag Divider < li
  def render
    <self .mdc-list-divider role="separator">