import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {LinearProgress} from "../../../src/linear-progress/linear-progress"

var block1 = '
LinearProgress\n
===================\n

### Import\n
```javascript\n
import {LinearProgress} from "material-imba"\n
```\n

### Props\n
'

var open = '
<br>\n
###### open\n
```javascript\n
<LinearProgress open=true>\n
```\n
'

var indeterminate = '
<br>\n
###### indeterminate - puts progress in infinite loading state\n
```javascript\n
<LinearProgress open=true indeterminate=true>\n
```\n
'

var reversed = '
<br>\n
###### reversed - reverses progress direction\n
```javascript\n
<LinearProgress open=true indeterminate=true reversed=true>\n
```\n
'

var progress = '
<br>\n
###### progress - sets how much of the bar is filled (between 0 and 1)\n
```javascript\n
<LinearProgress open=true progress=0.5>\n
```\n
'

var buffer = '
<br>\n
###### buffer - sets how much of the bar is partially filled, rest is filled with dashes (between 0 and 1)\n
```javascript\n
<LinearProgress open=true buffer=0.5>\n
```\n
'

var opend = '
<br>\n
### Data\n

###### open\n
```javascript\n
# data = { open: false }\n
<button :click=(do data:open = !data:open)> "Show progress"\n
<LinearProgress[data] progress=0.5>\n
```\n
'

var progressd = '
###### progress\n
```javascript\n
# data = { open: true, progress: 0 }\n
<button :click=(do data:progress = data:progress + 0.1)> "Increase progress!"\n
<LinearProgress[data]>\n
```\n
'

var bufferd = '
###### buffer\n
```javascript\n
# data = { open: true, buffer: 0.1 }\n
<button :click=(do data:buffer = data:buffer + 0.1)> "Increase buffer!"\n
<LinearProgress[data]>\n
```\n
'

export tag LinearProgressPage
  def render
    <self>
      <Markdown text=block1>

      <Markdown text=open>
      <DemoBlock>
        <LinearProgress open=true>

      <Markdown text=indeterminate>
      <DemoBlock>
        <LinearProgress open=true indeterminate=true>

      <Markdown text=reversed>
      <DemoBlock>
        <LinearProgress open=true indeterminate=true reversed=true>

      <Markdown text=progress>
      <DemoBlock>
        <LinearProgress open=true progress=0.5>

      <Markdown text=progress>
      <DemoBlock>
        <LinearProgress open=true buffer=0.5>

      <Markdown text=opend>
      <DemoBlock>
        <button :click=(do data:bar1:open = !data:bar1:open)> "Show progress"
        <LinearProgress[data:bar1] progress=0.5>

      <Markdown text=progressd>
      <DemoBlock>
        <button :click=(do data:bar2:progress = data:bar2:progress + 0.1)> "Increase progress!"
        <LinearProgress[data:bar2]>

      <Markdown text=bufferd>
      <DemoBlock>
        <button :click=(do data:bar3:buffer = data:bar3:buffer + 0.1)> "Increase buffer!"
        <LinearProgress[data:bar3]>
