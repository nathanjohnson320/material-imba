import '@material/list/mdc-list.scss'

export tag ListItem < li
  def render
    <self .mdc-list-item>

export tag List < ul
  def render
    <self .mdc-list>

export tag Divider < li
  def render
    <self .mdc-list-divider role="separator">