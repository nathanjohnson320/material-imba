import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Select} from "../../../src/select/select"

var block1 = '
Select\n
===================\n

### Import\n
```javascript\n
import {Select} from "material-imba"\n
```\n

### Props\n
'

var options = '
<br>\n
###### options\n
```javascript\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select options=options>\n
```\n
'

var label = '
<br>\n
###### label\n
```javascript\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select label="Hello selector" options=options>\n
```\n
'

var disabled = '
<br>\n
###### disabled\n
```javascript\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select disabled=true label="Hello selector" options=options>\n
```\n
'

var box = '
<br>\n
###### box\n
```javascript\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select box=true label="Hello selector" options=options>\n
```\n
'

var outline = '
<br>\n
###### outline\n
```javascript\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select outline=true label="Hello selector" options=options>\n
```\n
'

var selecteddata = '
<br>\n
### Data\n

###### selected\n
```javascript\n
# data = { selected: null, selectedIndex: null }\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select[data] label="Hello selector" options=options>\n
<div> "Selected: {data:selected}"\n
```

###### selectedIndex\n
```javascript\n
# data = { selected: null, selectedIndex: null }\n
var options = [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]\n
<Select[data] label="Hello selector" options=options>\n
<div> "Index: {data:selectedIndex}"\n
```\n
'

export tag SelectPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=options>
      <DemoBlock>
        <Select options=data:select1:options>

      <Markdown text=label>
      <DemoBlock>
        <Select label="Hello selector" options=data:select1:options>

      <Markdown text=disabled>
      <DemoBlock>
        <Select disabled=true label="Hello selector" options=data:select1:options>

      <Markdown text=box>
      <DemoBlock>
        <Select box=true label="Hello selector" options=data:select1:options>

      <Markdown text=outline>
      <DemoBlock>
        <Select outline=true label="Hello selector" options=data:select1:options>

      <Markdown text=selecteddata>
      <DemoBlock>
        <Select[data:select2] outline=true label="Hello selector" options=data:select1:options>
        <div> "Selected: {data:select2:selected}"
        <div> "Index: {data:select2:selectedIndex}"
