import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Icon, Sizes} from "../../../src/icon/icon"

var block1 = '
Icon\n
===================\n

### Import\n
```javascript\n
import {Icon} from "material-imba"\n
```\n

### Props\n
'

var icon = '
<br>\n
###### icon - any of the material icons\n
```javascript\n
<Icon icon="menu">\n
```\n
'

var size = '
<br>\n
###### size - one of the standard material icon sizes\n
<small>_If using IconSizes one of tiny, small, medium, large_</small>\n
```javascript\n
# import {IconSizes} from "material-icons"
<Icon icon="menu" size=IconSizes:tiny>\n
```\n
'

var invert = '
<br>\n
###### invert - flips the icon from dark theme to light theme\n
```javascript\n
<div css:backgroundColor="white">\n
  <Icon icon="menu" invert=true>\n
```\n
'

var inactive = '
<br>\n
###### inactive - deactivates the icon\n
```javascript\n
<Icon icon="menu" inactive=true>\n
```\n
'

var color = '
<br>\n
###### color\n
<small>_This can also be set by a global css var --mdc-theme-on-secondary, if that is set it will be used over the color prop_</small>\n
```javascript\n
<Icon icon="favorite" color="blue">\n
```\n
'

export tag IconPage
  def render
    <self>
      <Markdown text=block1>
      <Markdown text=icon>

      <DemoBlock>
        <Icon icon="menu">

      <Markdown text=size>
      <DemoBlock>
        <Icon icon="menu" size=Sizes:tiny>

      <Markdown text=invert>
      <DemoBlock>
        <div css:backgroundColor="black">
          <Icon icon="menu" invert=true>

      <Markdown text=inactive>
      <DemoBlock>
        <Icon icon="menu" inactive=true>

      <Markdown text=color>
      <DemoBlock>
        <Icon icon="favorite" color="blue">

