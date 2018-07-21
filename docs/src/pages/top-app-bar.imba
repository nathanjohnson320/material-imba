import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {TopAppBar, AppBarTitle} from "../../../src/top-app-bar/top-app-bar"
import {IconButton} from "../../../src/icon-button/icon-button"
import {Menu, MenuAnchor, Corners} from "../../../src/menu/menu"

var block1 = '
TopAppBar\n
===================\n

### Import\n
```javascript\n
import {TopAppBar, AppBarTitle} from "material-imba"\n
```\n

### Slots\n
'

var menu = '
<br>\n
###### menu\n
```javascript\n
tag AppBar < TopAppBar\n
  def menu\n
    <@menu css:display="flex">\n
      <IconButton ripple=true onicon="menu" color="white">\n
      <AppBarTitle css:marginTop="8px"> "Material Imba"\n
```\n
'

var actions = '
<br>\n
###### actions\n
```javascript\n
# data = { menu: {} }\n
tag AppBar < TopAppBar\n
  def menu\n
    <@menu css:display="flex">\n
      <IconButton ripple=true onicon="menu" color="white">\n
      <AppBarTitle css:marginTop="8px"> "Material Imba"\n
\n
  def actions\n
    <@actions>\n
      <IconButton :click=(do data:open = true) ripple=true onicon="more_vert" color="white">\n
      <MenuAnchor>\n
        <Menu[data:menu] corner=Corners.BOTTOM_RIGHT items=["Account", "Logout"]>\n
```\n
'

tag AppBar1 < TopAppBar
  def menu
    <@menu css:display="flex">
      <IconButton ripple=true onicon="menu" color="white">
      <AppBarTitle css:marginTop="8px"> "Material Imba"

tag AppBar2 < TopAppBar
  def menu
    <@menu css:display="flex">
      <IconButton ripple=true onicon="menu" color="white">
      <AppBarTitle css:marginTop="8px"> "Material Imba"

  def actions
    <@actions>
      <IconButton :click=(do data:open = true) ripple=true onicon="more_vert" color="white">
      <MenuAnchor>
        <Menu[data] corner=Corners.BOTTOM_RIGHT items=["Account", "Logout"]>

export tag TopAppBarPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=menu>
      <DemoBlock>
        <AppBar1 css:position="inherit">

      <Markdown text=actions>
      <DemoBlock>
        <AppBar2[data] css:position="inherit">