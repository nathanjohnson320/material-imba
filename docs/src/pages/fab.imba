import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Fab} from '../../../src/fab/fab'

var block1 = "
Fab (floating action button)\n
===================\n

### Import\n
```javascript\n
import \{Fab\} from 'material-imba'\n
```\n

### Props\n
"

var icon = '
<br>\n
###### icon\n
```javascript\n
<Fab icon="favorite">\n
```\n
'

var iconColor = '
<br>\n
###### iconColor\n
```javascript\n
<Fab icon="favorite" color="white">\n
```\n
'

var ripple = '
<br>\n
###### ripple\n
```javascript\n
<Fab ripple=true icon="favorite">\n
```\n
'

var mini = '
<br>\n
###### mini\n
```javascript\n
<Fab mini=true ripple=true icon="favorite">\n
```\n
'

var extended = '
<br>\n
###### extended\n
```javascript\n
<Fab extended=true ripple=true>\n
```\n
'

var text = '
<br>\n
###### text\n
```javascript\n
<Fab extended=true ripple=true text="Click!">\n
```\n
'

export tag FabPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=icon>
      <DemoBlock>
        <Fab icon="favorite">

      <Markdown text=iconColor>
      <DemoBlock>
        <Fab icon="favorite" iconColor="white">

      <Markdown text=ripple>
      <DemoBlock>
        <Fab ripple=true icon="favorite">

      <Markdown text=mini>
      <DemoBlock>
        <Fab mini=true ripple=true icon="favorite">

      <Markdown text=extended>
      <DemoBlock>
        <Fab extended=true ripple=true icon="favorite">

      <Markdown text=text>
      <DemoBlock>
        <Fab extended=true ripple=true icon="favorite" text="Click!">