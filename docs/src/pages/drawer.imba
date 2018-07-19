import {Markdown} from '../markdown'
import {Drawer, ToolbarSpacer} from '../../../src/drawer/drawer'

var block1 = '
Dialog\n
===================\n

### Import\n
```javascript\n
import {Drawer, ToolbarSpacer} from \'material-imba\'\n
```\n

### Slots\n
\n
###### header - padded block at the top of the drawer used for banners\n
```javascript\n
export tag MyDrawer < Drawer\n
  def header\n
    <@header>\n
      <img src="/mylogo.png">\n
```\n

###### body - main part of the drawer\n
```javascript\n
export tag MyDrawer < Drawer\n
  def body\n
    <@body>\n
      <DocsAppBar>\n
      <ToolbarSpacer>\n
      <List>\n
        <ListItem>\n
          <a route-to=\'/material-imba/\'> \'Components\'\n
        <Divider>\n
        for component in data:components\n
          <ListItem>\n
            <a route-to="/material-imba{component:link}"> component:name\n
```\n

### Props\n
\n
###### open\n
```javascript\n
<Drawer open=true>\n
```\n

### Events\n
\n
###### drawerstate\n
```javascript\n
tag DocsDrawer < Drawer\n
  def ondrawerstate e\n
		store:menuOpen = e.data:open\n
```\n

ToolbarSpacer\n
===================\n
Positions toolbar content appropriately under the toolbar itself
'

export tag DrawerPage
  def render
    <self>
      <Markdown text=block1>