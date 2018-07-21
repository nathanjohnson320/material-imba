import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Switch} from "../../../src/switch/switch"

var block1 = '
Switch\n
===================\n

### Import\n
```javascript\n
import {Switch} from "material-imba"\n
```\n

### Props\n
'

var label = '
<br>\n
###### label\n
```javascript\n
<Switch label="Active?">\n
```\n
'

var id = '
<br>\n
###### id\n
```javascript\n
<Switch id="myswitch" label="Active?">\n
# <input class="mdc-switch__native-control" type="checkbox" role="switch" id="myswitch">\n
```\n
'

var toggled = '
<br>\n

### Data\n

###### toggled\n
```javascript\n
# data = { toggled: false }\n
<Switch[data] label="Active?">\n
<div> "Toggled? {data:toggled}"\n
```\n
'

var disabled = '
<br>\n
###### disabled\n
```javascript\n
# data = { toggled: false, disabled: false }\n
<Switch[data] label="Active?">\n
<div> "Toggled? {data:toggled}"\n
<button :click=(do data:toggled = !data:toggled)> "Disable"\n
```\n
'

export tag SwitchPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=label>
      <DemoBlock>
        <Switch label="Active?">

      <Markdown text=id>
      <DemoBlock>
        <Switch id="myswitch" label="Active?">

      <Markdown text=toggled>
      <DemoBlock>
        <Switch[data:switch1] label="Active?">
        <div> "Toggled? {data:switch1:toggled}"
        <button :click=(do data:switch1:disabled = !data:switch1:disabled)> "Disable"
