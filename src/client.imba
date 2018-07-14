# import {Button} from './button/button'
# import {Icon, Sizes} from './icon/icon'
# import {Grid, Row, Column} from './grid/grid'
import {Drawer, ToolbarSpacer} from './drawer/drawer'
import {TopAppBar, AppBarTitle} from './top-app-bar/top-app-bar'
import {Icon, Sizes} from './icon/icon'
import {List, ListItem, Divider} from './list/list'
var store = {
	menuOpen: false
}

tag MyAppBar < TopAppBar
	def menu
		<@menu css:display="flex">
			<Icon icon="menu" color="white">
			<AppBarTitle> "Material Imba"

	def actions
		<@actions>
			<div> ""

tag MyDrawer < Drawer
	def ondrawerstate e
		store:menuOpen = e.data:open

	# def header
	# 	<@header>
	# 		<div> "I AM THE HEADER THING"

	def body
		<@body>
			<MyAppBar title="The Title">
			<ToolbarSpacer>
			<List>
				<ListItem> "Sup"
				<ListItem> "Hello"
				<Divider>
				<ListItem> "Sup"
				<ListItem> "Hello"

tag App
	def toggle
		data:menuOpen = !data:menuOpen

	def render
		<self>
			<button :click="toggle"> "Toggle"
			<MyDrawer open=data:menuOpen>


Imba.mount <App[store]>
