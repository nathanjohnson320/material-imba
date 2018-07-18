import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Checkbox} from '../../../src/checkbox/checkbox'

var block1 = "
Checkbox\n
===================\n

### Import\n
```javascript\n
import \{Checkbox\} from 'material-imba'\n
```\n

### Props\n
"

var label = "
<br>\n
###### label\n
```javascript\n
<Checkbox label=\"Checked?\">\n
```\n
"

var disabled = "
<br>\n
###### disabled\n
```javascript\n
<Checkbox label=\"Checked?\" disabled=data:disabled>\n
<div> data:disabled
```\n
"

var dm = "<br>\n
### Data\n
###### disabled\n

```\n
<button :click=(do data:disabled = !data:disabled)> \"Disable the checkbox\" \n
<Checkbox label=\"Checked?\" disabled=data:disabled>\n
```\n
"

var dc = "<br>\n
###### checked\n
```\n
<Checkbox[data] label=\"Checked?\">\n
<div> data:checked\n
```\n
"

export tag CheckboxPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=label>
      <DemoBlock>
        <Checkbox label="Checked?">

      <Markdown text=dm>
      <DemoBlock>
        <button :click=(do data:box1:disabled = !data:box1:disabled)> "Disable the checkbox"
        <Checkbox label="Checked?" disabled=data:box1:disabled>

      <Markdown text=dc>
      <DemoBlock>
        <Checkbox[data:box2] label="Checked?">
        <div>
          "Checked: "
          data:box2:checked || "unchecked"