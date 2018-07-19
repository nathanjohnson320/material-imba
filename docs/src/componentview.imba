import {ButtonPage} from "./pages/button"
import {CardPage} from "./pages/card"
import {CheckboxPage} from "./pages/checkbox"
import {ChipPage} from "./pages/chips"
import {DialogPage} from "./pages/dialog"
import {DrawerPage} from "./pages/drawer"
import {FabPage} from "./pages/fab"
import {GridPage} from "./pages/grid"
import {IconPage} from "./pages/icon"

var base = "/material-imba"

export tag ComponentView
  def render
    <self>
      <ButtonPage[data:button] route="{base}/button">
      <CardPage[data:card] route="{base}/card">
      <CheckboxPage[data:checkbox] route="{base}/checkbox">
      <ChipPage[data:chip] route="{base}/chips">
      <DialogPage[data:dialog] route="{base}/dialog">
      <DrawerPage route="{base}/drawer">
      <FabPage[data:fab] route="{base}/fab">
      <GridPage route="{base}/grid">
      <IconPage route="{base}/icon">