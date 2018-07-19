import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Grid, Row, Column} from "../../../src/grid/grid"

var block1 = '
Column\n
===================\n

### Import\n
```javascript\n
import {Grid, Row, Column} from "material-imba"\n
```\n

### Props\n
'

var width = '
<br>\n
###### width - number of columns to take up\n
<small>_Note: the max number of columns supported currently is 12_</small>\n
```javascript\n
<Column width=3>\n
```\n
'

var example = '
<br>\n
### Example\n

```javascript\n
<Grid>\n
  <Row>\n
    <Column width=12 css:backgroundColor=pallete:a>\n
      <div> "Hello"\n

  <Row>\n
    <Column css:backgroundColor=pallete:b width=4>\n
      <div> "Hello"\n
    <Column css:backgroundColor=pallete:c width=4>\n
      <div> "Hello"\n
    <Column css:backgroundColor=pallete:b width=4>\n
      <div> "Hello"\n

  <Row>\n
    <Column width=12 css:backgroundColor=pallete:a>\n
      <div> "Hello"\n
```
'

export tag GridPage
  def render
    var pallete = {a: "#7EBDC2", b: "#F3DFA2", c: "#EFE6DD"}

    <self>
      <Markdown text=block1>
      <Markdown text=width>
      <Markdown text=example>

      <DemoBlock>
        <Grid>
          <Row>
            <Column width=12 css:backgroundColor=pallete:a>
              <div> "Hello"

          <Row>
            <Column css:backgroundColor=pallete:b width=4>
              <div> "Hello"
            <Column css:backgroundColor=pallete:c width=4>
              <div> "Hello"
            <Column css:backgroundColor=pallete:b width=4>
              <div> "Hello"

          <Row>
            <Column width=12 css:backgroundColor=pallete:a>
              <div> "Hello"

