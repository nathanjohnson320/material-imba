import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Card} from '../../../src/card/card'

var block1 = "
Card\n
===================\n

### Import\n
```javascript\n
import \{Card\} from 'material-imba'\n
```\n

### Slots\n
"

var body = "
<br>\n
###### body\n
Sets the inner card content\n
```javascript\n
export tag MyCard < Card\n
  def body\n
    <@body>\n
      <div> \"Body content goes here\"\n
```\n
"

var actions = "
<br>\n
###### actions\n
Sets the action block (for buttons)\n
```javascript\n
export tag MyCard < Card\n
  def actions\n
    <@actions>\n
      <div>\n
        <button> \"Accept\"\n
        <button> \"Decline\"\n
  def body\n
    <@body>\n
      <div> \"Body content goes here\"\n
```\n
"

var outlined = "<br>\n
### Props\n

###### outlined - a card with no elevation\n
```javascript\n
<MyCard outlined=true>\n
```\n
"

var width = "
<br>\n
###### width\n
```javascript\n
<MyCard width=\"100%\">\n
```\n
"

var height = "
<br>\n
###### height\n
```javascript\n
<MyCard height=\"100%\">\n
```\n
"

export tag MyCard1 < Card
  def body
    <@body>
      <div> "Body content goes here"

export tag MyCard2 < Card
  def actions
    <@actions>
      <div>
        <button> "Accept"
        <button> "Decline"
  def body
    <@body>
      <div> "Body content goes here"

export tag CardPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=body>
      <DemoBlock>
        <MyCard1>

      <Markdown text=actions>
      <DemoBlock>
        <MyCard2>

      <Markdown text=outlined>
      <DemoBlock>
        <MyCard2 outlined=true>

      <Markdown text=width>
      <DemoBlock>
        <MyCard2 width="100%">

      <Markdown text=height>
      <DemoBlock>
        <MyCard2 height="100%">
