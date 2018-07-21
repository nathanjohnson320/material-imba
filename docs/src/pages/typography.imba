import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Typography, Headline, Subtitle, TypographyBody, TypographyCaption, TypographyButton, TypographyOverline} from "../../../src/typography/typography"

var typography = '
Typography\n
===================\n

### Import\n
```javascript\n
import {Typography} from "material-imba"\n
```\n

Sets the font family to Roboto, sans-serif\n

### Example\n

```javascript\n
<Typography>\n
  <div> "Hello, in roboto"\n
```\n
'

var headline = '
<br>\n
Headline\n
===================\n

### Import\n
```javascript\n
import {Headline} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<Headline level=6> "Hello"\n
<Headline level=5> "Hello"\n
<Headline level=4> "Hello"\n
<Headline level=3> "Hello"\n
<Headline level=2> "Hello"\n
<Headline level=1> "Hello"\n
```\n
'

var subtitle = '
<br>\n
Subtitle\n
===================\n

### Import\n
```javascript\n
import {Subtitle} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<Subtitle level=2> "Hello"\n
<Subtitle level=1> "Hello"\n
```\n
'

var typographybody = '
<br>\n
TypographyBody\n
===================\n

### Import\n
```javascript\n
import {TypographyBody} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<TypographyBody level=2> "Hello"\n
<TypographyBody level=1> "Hello"\n
```\n
'

var typographycaption = '
<br>\n
TypographyCaption\n
===================\n

### Import\n
```javascript\n
import {TypographyCaption} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<TypographyCaption> "Hello"\n
```\n
'

var typographybutton = '
<br>\n
TypographyButton\n
===================\n

### Import\n
```javascript\n
import {TypographyButton} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<TypographyButton> "Hello"\n
```\n
'

var typographyoverline = '
<br>\n
TypographyOverline\n
===================\n

### Import\n
```javascript\n
import {TypographyOverline} from "material-imba"\n
```\n

### Examples\n

```javascript\n
<TypographyOverline> "Hello"\n
```\n
'

export tag TypographyPage
  def render
    <self>
      <Markdown text=typography>
      <DemoBlock>
        <Typography>
          <div> "Hello, in roboto"

      <Markdown text=headline>
      <DemoBlock>
        <Headline level=6> "Hello"
        <Headline level=5> "Hello"
        <Headline level=4> "Hello"
        <Headline level=3> "Hello"
        <Headline level=2> "Hello"
        <Headline level=1> "Hello"

      <Markdown text=subtitle>
      <DemoBlock>
        <Subtitle level=2> "Hello"
        <Subtitle level=1> "Hello"

      <Markdown text=typographybody>
      <DemoBlock>
        <TypographyBody level=2> "Hello"
        <TypographyBody level=1> "Hello"

      <Markdown text=typographycaption>
      <DemoBlock>
        <TypographyCaption> "Hello"

      <Markdown text=typographybutton>
      <DemoBlock>
        <TypographyButton> "Hello"

      <Markdown text=typographyoverline>
      <DemoBlock>
        <TypographyOverline> "Hello"
