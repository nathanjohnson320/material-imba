import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Menu, MenuAnchor, Corners} from "../../../src/menu/menu"

var block1 = '
Menu\n
===================\n

### Import\n
```javascript\n
import {Menu, MenuAnchor, Corners} from "material-imba"\n
```\n

### Props\n
'

var items = '
<br>\n
###### items\n
```javascript\n
<Menu items=["one", "two", "three"] open=true>\n
```\n
'

var quickopen = '
<br>\n
###### quickopen\n
```javascript\n
<Menu items=["one", "two", "three"] open=true quickopen=true>\n
```\n
'

var corner = '
<br>\n
###### corner - which corner of the menu to anchor to\n
<small>_one of Corners. `BOTTOM_END, BOTTOM_LEFT, BOTTOM_RIGHT, BOTTOM_START, TOP_END, TOP_LEFT, TOP_RIGHT, TOP_START`_</small>\n
```javascript\n
<Menu items=["one", "two", "three"] open=true corner=Corners.TOP_START>\n
```\n
'

var datas = '
<br>\n
### Data\n

###### selected\n
```javascript\n
# var data = { open: false, selected: null }\n
<button :click=(do data:open = !data:open)> "open menu"\n
<div>\n
  "Selected: "\n
  data:selected || ""\n
<Menu[data] items=["one", "two", "three"]>\n
```\n
'

export tag MenuPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=items>
      <DemoBlock css:height="150px">
        <Menu items=["one", "two", "three"] open=true>

      <Markdown text=quickopen>
      <DemoBlock css:height="150px">
        <button :click=(do data:menu1:open = !data:menu1:open)> "open menu"
        <Menu[data:menu1] quickopen=true items=["one", "two", "three"]>

      <Markdown text=corner>
      <DemoBlock css:height="150px">
        <Menu[data:menu1] items=["one", "two", "three"] corner=Corners.TOP_START>

      <Markdown text=datas>
      <DemoBlock css:height="150px">
        <button :click=(do data:menu2:open = !data:menu2:open)> "open menu"
        <div>
          "Selected: "
          data:menu2:selected
        <Menu[data:menu2] items=["one", "two", "three"]>