import {MDCTabBar} from "@material/tabs"
import {Icon} from "../icon/icon"
import "@material/tabs/mdc-tabs.scss"

export tag Tabs < nav
  prop items
  prop selectedItem
  prop selectedIndex

  def mount
    @tabBar = MDCTabBar.new @dom

    # Listen for tab selections
    @dom.addEventListener "MDCTabBar:change", do |e|
      var index = e:detail:activeTabIndex
      data:selectedIndex = index
      data:selectedItem = @items[index]
      Imba.commit

    Imba.commit

  def render
    <self.mdc-tab-bar>
      for item in @items
        <a.mdc-tab href="#">
          if item:icon
            <Icon icon=item:icon>
            <span.mdc-tab__icon-text> item:text
          else
            item:text
      <span.mdc-tab-bar__indicator>
