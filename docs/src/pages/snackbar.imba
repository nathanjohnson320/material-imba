import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Snackbar} from "../../../src/snackbar/snackbar"

var block1 = '
Snackbar\n
===================\n

### Import\n
```javascript\n
import {Snackbar} from "material-imba"\n
```\n

### Data\n
'

var dat = '
<br>\n
###### show\n
```javascript\n
# data = {show: false}\n
<Snackbar[data]>\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var text = '
<br>\n
### Props\n

###### text\n
```javascript\n
# data = {show: false}\n
<Snackbar[data] text="Hello!">\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var timeout = '
<br>\n
###### timeout - total time to leave snackbar open (in milliseconds)\n
```javascript\n
# data = {show: false}\n
<Snackbar[data] timeout=500 text="Hello!">\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var actionText = '
<br>\n
###### actionText\n
```javascript\n
# data = {show: false}\n
<Snackbar[data] actionText="Do an action!" text="Hello!">\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var multiline = '
<br>\n
###### multiline\n
```javascript\n
# data = {show: false}\n
<Snackbar[data] multiline=true actionText="Do an action!" text="I am a really long line and should take up two of them">\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var actionOnBottom = '
<br>\n
###### actionOnBottom\n
```javascript\n
# data = {show: false}\n
<Snackbar[data] actionOnBottom=true multiline=true actionText="Do an action!" text="I am a really long line and should take up two of them">\n
<button :click=(do data:show = true)> "Open snackbar"\n
```\n
'

var evts = '
<br>\n

### Events\n

###### onaction\n
```javascript\n
export tag Demo\n
  def onaction\n
    data:clicked = !data:clicked\n
\n
  def render\n
    # data = {show: false, clicked: false}\n
    <Snackbar[data] actionText="Do an action!" text="Hello!">\n
    <button :click=(do data:show = true)> "Open snackbar"\n
    <div> "Clicked: {data:clicked}"\n
```\n
'

export tag SnackbarPage
  def onaction
    data:snackbar7:clicked = !data:snackbar7:clicked

  def render
    <self>
      <Markdown text=block1>

      <Markdown text=dat>
      <DemoBlock>
        <Snackbar[data:snackbar1]>
        <button :click=(do data:snackbar1:show = true)> "Open snackbar"

      <Markdown text=text>
      <DemoBlock>
        <Snackbar[data:snackbar2] text="Hello!">
        <button :click=(do data:snackbar2:show = true)> "Open snackbar"

      <Markdown text=timeout>
      <DemoBlock>
        <Snackbar[data:snackbar3] timeout=500 text="Hello!">
        <button :click=(do data:snackbar3:show = true)> "Open snackbar"

      <Markdown text=actionText>
      <DemoBlock>
        <Snackbar[data:snackbar4] actionText="Do an action!" text="Hello!">
        <button :click=(do data:snackbar4:show = true)> "Open snackbar"

      <Markdown text=multiline>
      <DemoBlock>
        <Snackbar[data:snackbar5] multiline=true actionText="Do an action!" text="I am a really long line and should take up two of them">
        <button :click=(do data:snackbar5:show = true)> "Open snackbar"

      <Markdown text=actionOnBottom>
      <DemoBlock>
        <Snackbar[data:snackbar6] actionOnBottom=true multiline=true actionText="Do an action!" text="I am a really long line and should take up two of them">
        <button :click=(do data:snackbar6:show = true)> "Open snackbar"

      <Markdown text=evts>
      <DemoBlock>
        <Snackbar[data:snackbar7] actionText="Do an action!" text="Hello!">
        <button :click=(do data:snackbar7:show = true)> "Open snackbar"
        <div> "Clicked: {data:snackbar7:clicked}"