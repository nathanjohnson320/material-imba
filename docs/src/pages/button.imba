import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Button} from '../../../src/button/button'

var block1 = "
Button\n
===================\n

### Import\n
```javascript\n
import \{Button\} from 'material-imba'\n
```\n

### Props\n
"

var text = "
<br>\n
###### text\n
```javascript\n
<Button text=\"Hello, Material!\">\n\n
OR \n\n
<Button> \"Hello, Material!\"\n
```\n
"

var raised = "
<br>\n
###### raised\n
```javascript\n
<Button text=\"Hello, Material!\" raised=true>\n
```\n
"

var flat = "
<br>\n
###### flat\n
```javascript\n
<Button text=\"Hello, Material!\" flat=true>\n
```\n
"

var outline = "
<br>\n
###### outlined\n
```javascript\n
<Button text=\"Hello, Material!\" outline=true>\n
```\n
"

var ripple = "
<br>\n
###### ripple\n
```javascript\n
<Button text=\"Hello, Material!\" ripple=true raised=true>\n
```\n
"

var icon = "
<br>\n
###### icon\n
```javascript\n
<Button text=\"Hello, Material!\" ripple=true icon=\"favorite\">\n
```\n
"

var iconColor = "
<br>\n
###### iconColor\n
```javascript\n
<Button text=\"Hello, Material!\" ripple=true icon=\"favorite\" iconColor=\"white\">\n
```\n
"

var dm = "<br>\n
### Data\n

###### disabled\n
```javascript\n
<Button text=\"Toggle disabled\" :click=(do data:disabled = !data:disabled) outlined=true ripple=true>\n
<Button[data] text=\"Hello, Material!\" raised=true>\n
```\n
"

export tag ButtonPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=text>
      <DemoBlock>
        <Button text="Hello, Material!">

      <Markdown text=raised>
      <DemoBlock>
        <Button text="Hello, Material!" raised=true>

      <Markdown text=flat>
      <DemoBlock>
        <Button text="Hello, Material!" flat=true>

      <Markdown text=outline>
      <DemoBlock>
        <Button text="Hello, Material!" outlined=true>

      <Markdown text=ripple>
      <DemoBlock>
        <Button text="Hello, Material!" ripple=true raised=true>

      <Markdown text=icon>
      <DemoBlock>
        <Button text="Hello, Material!" ripple=true icon="favorite">

      <Markdown text=iconColor>
      <DemoBlock>
        <Button text="Hello, Material!" ripple=true raised=true icon="favorite" iconColor="white">

      <Markdown text=dm>
      <DemoBlock>
        <Button text="Toggle disabled" :click=(do data:disabled = !data:disabled) outlined=true ripple=true>
        <Button[data] text="Hello, Material!" raised=true>

