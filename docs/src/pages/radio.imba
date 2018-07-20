import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Radio, RadioGroup} from "../../../src/radio/radio"

var block1 = '
Radio\n
===================\n

### Import\n
```javascript\n
import {Radio} from "material-imba"\n
```\n

### Props\n
'

var label = '
<br>\n
###### label\n
```javascript\n
<Radio label="Yes?">\n
```\n
'

var id = '
<br>\n
###### id\n
```javascript\n
<Radio label="Yes?" id="hello">\n
#<input class="mdc-radio__native-control" type="radio" id="hello" value>\n
```\n
'

var name = '
<br>\n
###### name\n
```javascript\n
<Radio label="Yes?" id="hello" name="group1">\n
#<input class="mdc-radio__native-control" type="radio" name="group1" id="hello" value="">\n
```\n
'

var value = '
<br>\n
###### value\n
```javascript\n
<Radio label="Yes?" id="hello" name="group2" value="yes">\n
```\n
'

var ripple = '
<br>\n
###### ripple\n
```javascript\n
<Radio label="Yes?" id="hello" name="group3" value="yes" ripple=true>\n
```\n
'

var checked = '
<br>\n

### Data\n

###### checked\n
```javascript\n
# data = { checked: true }\n
<Radio[data] label="Yes?" id="hello2" name="group4" value="yes">\n
```\n
'

var block2 = '
<br>\n
RadioGroup\n
===================\n

### Import\n
```javascript\n
import {RadioGroup} from "material-imba"\n
```\n

### Props\n
'

var items = '
<br>\n
###### items\n
```javascript\n
var items = [{label: "item 1", value: 1}, {label: "item 2", value: 2}]\n
# data = {}\n
<RadioGroup[data] items=items>\n
```\n
'

var groupname = '
<br>\n
###### name - sets name of each radio button in the group\n
```javascript\n
var items = [{label: "item 1", value: 1}, {label: "item 2", value: 2}]\n
# data = {}\n
<RadioGroup[data] items=items name="radiogroup1">\n
# sample input in group: <input class="mdc-radio__native-control" type="radio" name="radiogroup1" id="hkuez" value="1">\n
```
'

var groupripple = '
<br>\n
###### ripple\n
```javascript\n
var items = [{label: "item 1", value: 1}, {label: "item 2", value: 2}]\n
# data = {}\n
<RadioGroup[data] items=items name="radiogroup1" ripple=true>\n
```
'

var groupdata = '
<br>\n
### Data\n

###### checked\n
```javascript\n
var items = [{label: "item 1", value: 1}, {label: "item 2", value: 2}]\n
# data = {checked: null}\n
<RadioGroup[data] items=items name="radiogroup1" ripple=true>\n
```
'

export tag RadioPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=label>
      <DemoBlock>
        <Radio label="Yes?">

      <Markdown text=id>
      <DemoBlock>
        <Radio label="Yes?" id="hello">

      <Markdown text=name>
      <DemoBlock>
        <Radio label="Yes?" id="hello" name="group1">

      <Markdown text=value>
      <DemoBlock>
        <Radio label="Yes?" id="hello" name="group2" value="yes">

      <Markdown text=ripple>
      <DemoBlock>
        <Radio label="Yes?" id="hello" name="group3" value="yes" ripple="true">

      <Markdown text=checked>
      <DemoBlock>
        <Radio[data:radio1] label="Yes?" id="hello2" name="group4" value="yes">

      <Markdown text=block2>
      <Markdown text=items>
      <DemoBlock>
        <RadioGroup[data:radiogroup] items=data:radiogroup:items>

      <Markdown text=groupname>
      <DemoBlock>
        <RadioGroup[data:radiogroup] items=data:radiogroup:items name="radiogroup1">

      <Markdown text=groupripple>
      <DemoBlock>
        <RadioGroup[data:radiogroup] items=data:radiogroup:items name="radiogroup2" ripple=true>

      <Markdown text=groupdata>
      <DemoBlock>
        <div> "Value: {data:radiogroup1:checked}"
        <RadioGroup[data:radiogroup1] items=data:radiogroup:items name="radiogroup3" ripple=true>