import {ButtonPage} from "./pages/button"
import {CardPage} from "./pages/card"
import {CheckboxPage} from "./pages/checkbox"
import {ChipPage} from "./pages/chips"
import {DialogPage} from "./pages/dialog"
import {DrawerPage} from "./pages/drawer"
import {FabPage} from "./pages/fab"
import {GridPage} from "./pages/grid"
import {IconPage} from "./pages/icon"
import {IconButtonPage} from "./pages/iconbutton"
import {LinearProgressPage} from "./pages/linearprogress"
import {ListPage} from "./pages/list"
import {MenuPage} from "./pages/menu"
import {RadioPage} from "./pages/radio"
import {SelectPage} from "./pages/select"
import {SliderPage} from "./pages/slider"
import {SnackbarPage} from "./pages/snackbar"
import {SwitchPage} from "./pages/switch"
import {TabsPage} from "./pages/tabs"
import {TextfieldPage} from "./pages/textfield"
import {TopAppBarPage} from "./pages/top-app-bar"

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
      <IconButtonPage[data:iconbutton] route="{base}/icon-button">
      <LinearProgressPage[data:linearprogress] route="{base}/linear-progress">
      <ListPage route="{base}/list">
      <MenuPage[data:menu] route="{base}/menu">
      <RadioPage[data:radio] route="{base}/radio">
      <SelectPage[data:select] route="{base}/select">
      <SliderPage[data:slider] route="{base}/slider">
      <SnackbarPage[data:snackbar] route="{base}/snackbar">
      <SwitchPage[data:switch] route="{base}/switch">
      <TabsPage[data:tabs] route="{base}/tabs">
      <TextfieldPage[data:textfield] route="{base}/textfield">
      <TopAppBarPage[data:topappbar] route="{base}/top-app-bar">