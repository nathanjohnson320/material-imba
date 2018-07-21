import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Textfield, Textarea} from "../../../src/textfield/textfield"

var block1 = '
Textfield\n
===================\n

### Import\n
```javascript\n
import {Textfield} from "material-imba"\n
```\n

### Props\n
'

var label = '
<br>\n
###### label\n
```javascript\n
<Textfield label="Hello, material!">\n
```\n
'

var id = '
<br>\n
###### id\n
```javascript\n
<Textfield id="textfield1" label="Hello, material!">\n
# <input class="mdc-text-field__input" type="text" id="textfield1">\n
# <label class="mdc-floating-label" for="textfield1">Hello, material!</label>\n
```\n
'

var fullwidth = '
<br>\n
###### fullwidth\n
<small>_Does not work with `label` attribute_</small>\n
```javascript\n
<Textfield fullwidth=true>\n
```\n
'

var boxed = '
<br>\n
###### boxed\n
```javascript\n
<Textfield boxed=true label="Hello, material!">\n
```\n
'

var outline = '
<br>\n
###### outline\n
```javascript\n
<Textfield outline=true label="Hello, material!">\n
```\n
'

var value = '
<br>\n
### Data\n

###### value\n
```javascript\n
# data = { value: null }\n
<Textfield[data] outline=true label="Hello, material!">\n
<div> "Value: {data:value}"\n
```\n
'

var disabled = '
<br>\n
###### disabled\n
```javascript\n
# data = { value: null, disabled: false }\n
<Textfield[data] outline=true label="Hello, material!">\n
<button :click=(do data:disabled = !data:disabled)> "Toggle disabled"\n
```\n
'

var block2 = '
<br>\n
Textarea\n
===================\n

### Import\n
```javascript\n
import {Textarea} from "material-imba"\n
```\n

### Props\n
'

var rows = '
<br>\n
###### rows\n
```javascript\n
<Textarea rows=4>\n
```\n
'

var cols = '
<br>\n
###### cols\n
```javascript\n
<Textarea cols=3 rows=4>\n
```\n
'

var label2 = '
<br>\n
###### label\n
```javascript\n
<Textarea label="Hello, material!" rows=4>\n
```\n
'

var fullwidth2 = '
<br>\n
###### fullwidth\n
<small>_Does not work with label_</small>\n
```javascript\n
<Textarea fullwidth=true rows=4>\n
```\n
'

var boxed2 = '
<br>\n
###### boxed\n
```javascript\n
<Textarea boxed=true label="Hello, material!" rows=4>\n
```\n
'

var outline2 = '
<br>\n
###### outline\n
```javascript\n
<Textarea outline=true label="Hello, material!" rows=4>\n
```\n
'

var value2 = '
<br>\n
### Data\n

###### value\n
```javascript\n
# data = { value: "" }\n
<Textarea[data] label="Hello, material!" rows=4>\n
```\n
'

var disabled2 = '
<br>\n
###### disabled\n
```javascript\n
# data = { value: "", disabled: false }\n
<Textarea[data] label="Hello, material!" rows=4>\n
<button :click=(do data:disabled = !data:disabled)> "Disabled Textarea"\n
```\n
'

export tag TextfieldPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=label>
      <DemoBlock>
        <Textfield label="Hello, material!">

      <Markdown text=id>
      <DemoBlock>
        <Textfield id="textfield1" label="Hello, material!">

      <Markdown text=fullwidth>
      <DemoBlock>
        <Textfield fullwidth=true>

      <Markdown text=boxed>
      <DemoBlock>
        <Textfield boxed=true label="Hello, material!">

      <Markdown text=outline>
      <DemoBlock>
        <Textfield outline=true label="Hello, material!">

      <Markdown text=value>
      <DemoBlock>
        <Textfield[data:textfield1] outline=true label="Hello, material!">
        <div> "Value: {data:textfield1:value}"

      <Markdown text=disabled>
      <DemoBlock>
        <Textfield[data:textfield2] outline=true label="Hello, material!">
        <button :click=(do data:textfield2:disabled = !data:textfield2:disabled)> "Toggle disabled"

      <Markdown text=block2>
      <Markdown text=rows>
      <DemoBlock>
        <Textarea rows=4>

      <Markdown text=cols>
      <DemoBlock>
        <Textarea cols=3 rows=4>

      <Markdown text=label2>
      <DemoBlock>
        <Textarea label="Hello, material!" rows=4>

      <Markdown text=fullwidth2>
      <DemoBlock>
        <Textarea fullwidth=true rows=4>

      <Markdown text=boxed2>
      <DemoBlock>
        <Textarea boxed=true label="Hello, material!" rows=4>

      <Markdown text=outline2>
      <DemoBlock>
        <Textarea outline=true label="Hello, material!" rows=4>

      <Markdown text=value2>
      <DemoBlock>
        <Textarea[data:textarea] label="Hello, material!" rows=4>
        <div> "Value: {data:textarea:value}"

      <Markdown text=disabled2>
      <DemoBlock>
        <Textarea[data:textarea2] label="Hello, material!" rows=4>
        <button :click=(do data:textarea2:disabled = !data:textarea2:disabled)> "Disabled Textarea"