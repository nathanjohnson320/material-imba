import '@material/list/mdc-list.scss'

tag mtl-list-item < li
  def render
    <self .mdc-list-item>
      <slot>

tag mtl-list < ul
  def render
    <self .mdc-list>
      <slot>

tag mtl-list-divider < li
  def render
    <self .mdc-list-divider role="separator">
      <slot>