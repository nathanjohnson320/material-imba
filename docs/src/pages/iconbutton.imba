import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {IconButton} from "../../../src/icon-button/icon-button"

var block1 = '
IconButton\n
===================\n

### Import\n
```javascript\n
import {IconButton} from "material-imba"\n
```\n

### Props\n
'

var onicon = '
<br>\n
###### onicon - default icon\n
```javascript\n
<IconButton onicon="menu">\n
```\n
'

var ripple = '
<br>\n
###### ripple\n
```javascript\n
<IconButton onicon="menu" ripple=true>\n
```\n
'

var color = '
<br>\n
###### color - set the icon color\n
```javascript\n
<IconButton onicon="menu" ripple=true color="blue">\n
```\n
'

var toggle = '
<br>\n
###### toggle - switches between on and off icons on click\n
```javascript\n
<IconButton onicon="menu" officon="favorite" ripple=true toggle=true>\n
```\n
'

var toggledata = '
### Data\n

###### toggle - switches between on and off icons on click\n
```javascript\n
# data = { toggled: false }\n
<div>\n
  "Toggled"\n
  data:toggled || "not toggled"\n
<IconButton[data] onicon="menu" officon="favorite" ripple=true toggle=true color="black">\n
```\n
'


export tag IconButtonPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=onicon>
      <DemoBlock>
        <IconButton onicon="menu">

      <Markdown text=ripple>
      <DemoBlock>
        <IconButton onicon="menu" ripple=true>

      <Markdown text=color>
      <DemoBlock>
        <IconButton onicon="menu" ripple=true color="blue">

      <Markdown text=toggle>
      <DemoBlock>
        <IconButton onicon="menu" officon="favorite" ripple=true toggle=true>

      <Markdown text=toggledata>
      <DemoBlock>
        <IconButton[data] onicon="menu" officon="favorite" ripple=true toggle=true color="black">
        <div>
          "Toggled: "
          data:toggled || "not toggled"


