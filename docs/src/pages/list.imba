import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {List, ListItem, Divider} from "../../../src/list/list"

var block1 = '
List\n
===================\n

### Import\n
```javascript\n
import {List, ListItem, Divider} from "material-imba"\n
```\n

### Example\n
'

var example = '
<br>\n
```javascript\n
<List>\n
  <ListItem>\n
    "Item 1"\n
  <Divider>\n
  <ListItem>\n
    "Item 2"\n
  <ListItem>\n
    "Item 3"\n
\n
```\n
'

export tag ListPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=example>
      <DemoBlock>
        <List>
          <ListItem>
            "Item 1"
          <Divider>
          <ListItem>
            "Item 2"
          <ListItem>
            "Item 3"