import {Markdown} from '../markdown'
import {DemoBlock} from '../demo-block'
import {Dialog, DialogActionButton} from '../../../src/dialog/dialog'

var block1 = '
Dialog\n
===================\n

### Import\n
```javascript\n
import {Dialog} from \'material-imba\'\n
```\n

### Slots\n

###### header\n
Sets the dialog title\n
```javascript\n
export tag MyDialog < Dialog\n
  def header\n
    <@header>\n
      "Dialog Title!"\n
```\n

###### body\n
Sets the main content of the dialog\n
```javascript\n
export tag MyDialog < Dialog\n
  def body\n
    <@body>\n
      <div>\n
        "Main content goes in this"\n
```\n

###### footer\n
Sets the bottom portion of the dialog, most commonly a set of DialogActionButtons\n
```javascript\n
export tag MyDialog < Dialog\n
  def footer\n
    <@footer>\n
      <div>\n
        <DialogActionButton accept=true> "Accept"\n
        <DialogActionButton cancel=true> "Reject"\n
```\n

### Props\n

###### open\n
```javascript\n
<Dialog open=true>\n
```\n

###### scrollable - makes the body portion of the dialog scrollable\n
```javascript\n
<Dialog scrollable=true>\n
```\n

### Events\n

###### dialogstate - fired when dialog is accepted or canceled\n

```javascript\n
tag MyDialog < Dialog\n
  def ondialogstate e\n
    data:accepted = e.data:accepted\n
```\n

### Full example\n

```javascript\n
tag MyDialog < Dialog\n
  def ondialogstate e\n
    data:accepted = e.data:accepted\n
\n
  def header\n
    <@header>\n
      "Dialog Title!"\n
\n
  def body\n
    <@body>\n
      <div>\n
        "Main content goes in this"\n
\n
  def footer\n
    <@footer>\n
      <div>\n
        <DialogActionButton accept=true> "Accept"\n
        <DialogActionButton cancel=true> "Reject"\n
\n
export tag Sample\n
  def render
    <button :click=(do data:open = true)> "Open dialog"\n
      <MyDialog[data] text="Hello, material">\n
      <div>\n
        "Dialog open: "\n
        data:open || "no"\n
      <div>\n
        "Accepted dialog: "\n
        data:accepted || "no"\n
```\n
'

tag MyDialog < Dialog
  def ondialogstate e
    data:accepted = e.data:accepted

  def header
    <@header>
      "Dialog Title!"

  def body
    <@body>
      <div>
        "Main content goes in this"

  def footer
    <@footer>
      <div>
        <DialogActionButton accept=true> "Accept"
        <DialogActionButton cancel=true> "Reject"

export tag DialogPage
  def render
    <self>
      <Markdown text=block1>
      <DemoBlock>
        <button :click=(do data:open = true)> "Open dialog"
        <MyDialog[data] text="Hello, material">
        <div>
          "Dialog open: "
          data:open || "no"
        <div>
          "Accepted dialog: "
          data:accepted || "no"