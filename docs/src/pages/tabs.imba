import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Tabs} from "../../../src/tabs/tabs"

var block1 = '
Tabs\n
===================\n

### Import\n
```javascript\n
import {Tabs} from "material-imba"\n
```\n

### Props\n
'

var items = '
<br>\n
###### items\n
```javascript\n
# No icons\n
<Tabs items=[{text: "one"}, {text: "two"}, {text: "three"}]>\n
# With icons\n
<Tabs items=[{text: "one", icon: "menu"}, {text: "two", icon: "favorite"}, {text: "three", icon: "gps"}]>\n
```\n
'

var selectedItem = '
<br>\n
### Data\n

###### selectedItem/selectedIndex\n
```javascript\n
# data = {items: [{text: "one"}, {text: "two"}, {text: "three"}], selectedItem: null}\n
<Tabs[data] items=data:items>\n
<div> "Selected Item: {data:selectedItem}"\n
<div> "Selected Index: {data:selectedIndex}"\n
```\n
'

var changeContent = '
<br>\n
### Changing Content\n
```javascript\n
# data = {items: [{text: "one"}, {text: "two"}, {text: "three"}], selectedItem: null}\n
var selectedIndex = data:selectedIndex\n
<Tabs[data] items=data:items>\n
switch selectedIndex\n
  when 0 then <div> "first"\n
  when 1 then <div> "second"\n
  when 2 then <div> "third"\n
```\n
'

export tag TabsPage
  def render
    var selectedIndex = data:tabs2:selectedIndex
    <self>
      <Markdown text=block1>

      <Markdown text=items>
      <DemoBlock>
        <Tabs items=data:tabs1:items>
        <br>
        <br>
        <Tabs items=[{text: "one", icon: "menu"}, {text: "two", icon: "favorite"}, {text: "three", icon: "phone"}]>

      <Markdown text=selectedItem>
      <DemoBlock>
        <Tabs[data:tabs1] items=data:tabs1:items>
        <div> "Selected Item: {data:tabs1:selectedItem}"
        <div> "Selected Index: {data:tabs1:selectedIndex}"

      <Markdown text=changeContent>
      <DemoBlock>
        <Tabs[data:tabs2] items=data:tabs1:items>
        switch selectedIndex
          when 0 then <div> "first"
          when 1 then <div> "second"
          when 2 then <div> "third"
