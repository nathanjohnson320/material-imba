import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Slider} from "../../../src/slider/slider"

var block1 = '
Slider\n
===================\n

### Import\n
```javascript\n
import {Slider} from "material-imba"\n
```\n

### Props\n
'

var min = '
<br>\n
###### min\n
```javascript\n
# data = {value: null}\n
<Slider[data] min=6>\n
<div> "Value: {data:value}"\n
```\n
'

var max = '
<br>\n
###### max\n
```javascript\n
# data = {value: null}\n
<Slider[data] max=17 min=6>\n
<div> "Value: {data:value}"\n
```\n
'

var step = '
<br>\n
###### step\n
```javascript\n
# data = {value: null}\n
<Slider[data] step=3 max=17 min=6>\n
<div> "Value: {data:value}"\n
```\n
'

var discrete = '
<br>\n
###### discrete\n
```javascript\n
# data = {value: null}\n
<Slider[data] discrete=true step=3 max=17 min=6>\n
<div> "Value: {data:value}"\n
```\n
'

var trackmarks = '
<br>\n
###### trackmarks\n
```javascript\n
# data = {value: null}\n
<Slider[data] trackmarks=true discrete=true step=2 max=18 min=6>\n
<div> "Value: {data:value}"\n
```\n
'

var disabled = '
<br>\n
###### trackmarks\n
```javascript\n
# data = {value: null}\n
<Slider[data] disabled=true trackmarks=true discrete=true step=2 max=18 min=6>\n
<div> "Value: {data:value}"\n
```\n
'

#   prop trackmarks

export tag SliderPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=min>
      <DemoBlock>
        <Slider[data:slider1] min=6>
        <div> "Value: {data:slider1:value}"

      <Markdown text=max>
      <DemoBlock>
        <Slider[data:slider2] max=17 min=6>
        <div> "Value: {data:slider2:value}"

      <Markdown text=step>
      <DemoBlock>
        <Slider[data:slider3] step=3 max=17 min=6>
        <div> "Value: {data:slider3:value}"

      <Markdown text=discrete>
      <DemoBlock>
        <Slider[data:slider4] discrete=true step=3 max=17 min=6>
        <div> "Value: {data:slider4:value}"

      <Markdown text=trackmarks>
      <DemoBlock>
        <Slider[data:slider5] trackmarks=true discrete=true step=2 max=18 min=6>
        <div> "Value: {data:slider5:value}"

      <Markdown text=disabled>
      <DemoBlock>
        <Slider[data:slider6] disabled=true trackmarks=true discrete=true step=2 max=18 min=6>
        <div> "Value: {data:slider6:value}"
