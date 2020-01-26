import {MDCTabBar} from '@material/tab-bar';
import {MDCTabScroller} from '@material/tab-scroller';
import {MDCTab} from '@material/tab';
import '@material/tab-bar/mdc-tab-bar.scss'
import "@material/tab-scroller/mdc-tab-scroller.scss"
import "@material/tab/mdc-tab.scss"
import "./icon"

tag mtl-tab
  @active = false
  def mount
    @tab = MDCTab.new(self.children[0]);

  def render
    <self>
      <button.mdc-tab role="tab" aria-selected="false" tabindex="-1">
        <span.mdc-tab__content>
          <slot name="icon">
          <span.mdc-tab__text-label> @label

        <span.mdc-tab-indicator.mdc-tab-indicator--active=@active>
          <span.mdc-tab-indicator__content.mdc-tab-indicator__content--underline>

        <span.mdc-tab__ripple>

tag mtl-tab-scroller
  def mount
    @tabScroller = MDCTabScroller.new(self.children[0]);

  def render
    <self>
      <div.mdc-tab-scroller>
        <div.mdc-tab-scroller__scroll-area>
          <div.mdc-tab-scroller__scroll-content>
            <slot>

tag mtl-tabs
  def mount
    @tabBar = MDCTabBar.new(self.children[0]);

  def render
    <self>
      <div.mdc-tab-bar role="tablist">
        <slot>
