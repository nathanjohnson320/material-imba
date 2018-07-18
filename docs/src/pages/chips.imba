import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Chip, Chips} from '../../../src/chip/chip'

var block1 = "
Chip\n
===================\n

### Import\n
```javascript\n
import \{Chip\} from 'material-imba'\n
```\n

### Props\n
"

var index = '
<br>\n
###### index\n
The tabIndex of the chip

<br>\n
###### items\n
```javascript\n
<Chip text="Hello, material">\n
```\n
'

var leadingicon = '
<br>\n
###### leadingicon\n
```javascript\n
<Chip text="Hello, material" leadingicon="favorite">\n
```\n
'

var trailingicon = '
<br>\n
###### trailingicon\n
```javascript\n
<Chip text="Hello, material" trailingicon="remove">\n
```\n
'

var filter1 = '
<br>\n
###### filter - only used with Chips, allows Chip to be toggled\n
```javascript\n
<Chip text="Hello, material" filter=true>\n
```\n
'

var block2 = "
<br>\n
Chips\n
===================\n

### Import\n
```javascript\n
import \{Chips\} from 'material-imba'\n
```\n

### Props\n
"

var itemsmd = '
<br>\n
###### items\n
```javascript\n
var items = [\n
  {\n
    text: "A"\n
  }\n
  {\n
    text: "B"\n
  }\n
]\n
<Chips items=items>\n
\n
# With leading icons\n
var items2 = [\n
  {\n
    text: "A"\n
    leading: true\n
    icon: "favorite"\n
  }\n
  {\n
    text: "B"\n
    leading: true\n
    icon: "menu"\n
  }\n
]\n
<Chips items=items2>\n
\n
# With trailing icons\n
var items3 = [\n
  {\n
    text: "A"\n
    trailing: true\n
    icon: "favorite"\n
  }\n
  {\n
    text: "B"\n
    trailing: true\n
    icon: "menu"\n
  }\n
]\n
<Chips items=items3>\n
```\n
'

var choice = '
<br>\n
###### choice - allows a chip to be selected\n
```javascript\n
<Chips items=items choice=true>\n
```\n
'

var filter2 = '
<br>\n
###### filter - allows a chip to be toggled\n
```javascript\n
<Chips items=items filter=true>\n
```\n
'

var selected = '
<br>\n
### Data\n
###### selected - either the individual chip that was clicked or the set of chips clicked (if filter is true)\n
```javascript\n
# data = { \n
#   chip1: {\n
#     selected: null\n
#   }\n
#   chip2: {\n
#     selected: []\n
#   }\n
# }\n
<Chips[data:chip1] items=items choice=true>\n
<Chips[data:chip2] items=items filter=true>\n
<div>\n
  <div>\n
    "Chip 1: "\n
    if data:chip1:selected\n
      data:chip1:selected:text\n
  <div>\n
    "Chip 2: "\n
    for item in data:chip2:selected\n
      item\n
```\n
'

export tag ChipPage
  def render
    <self>
      <Markdown text=block1>
      <Markdown text=index>
      <DemoBlock>
        <Chip text="Hello, material">

      <Markdown text=leadingicon>
      <DemoBlock>
        <Chip text="Hello, material" leadingicon="favorite">

      <Markdown text=trailingicon>
      <DemoBlock>
        <Chip text="Hello, material" trailingicon="remove">

      <Markdown text=filter1>
      <DemoBlock>
        <Chip text="Hello, material" filter=true>

      <Markdown text=block2>
      <Markdown text=itemsmd>
      <DemoBlock>
        <Chips items=data:chip1:items1>
        <Chips items=data:chip1:items2>
        <Chips items=data:chip1:items3>

      <Markdown text=filter2>
      <DemoBlock>
        <Chips items=data:chip1:items1 filter=true>

      <Markdown text=selected>
      <DemoBlock>
        <Chips[data:chip1] items=data:chip1:items1 choice=true>
        <Chips[data:chip2] items=data:chip1:items1 filter=true>
        <div>
          <div>
            "Chip 1: "
            if data:chip1:selected
              data:chip1:selected:text
          <div>
            "Chip 2: "
            for item in data:chip2:selected
              item
