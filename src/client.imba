import {Button} from './button/button'
# import {Icon, Sizes} from './icon/icon'
# import {Grid, Row, Column} from './grid/grid'
import {Drawer, ToolbarSpacer} from './drawer/drawer'
import {TopAppBar, AppBarTitle} from './top-app-bar/top-app-bar'
import {Icon, Sizes} from './icon/icon'
import {List, ListItem, Divider} from './list/list'
import {Card} from './card/card'

var store = {
	menuOpen: false
}

tag MyAppBar < TopAppBar
	def toggle
		store:menuOpen = !store:menuOpen

	def menu
		<@menu css:display="flex">
			<Icon icon="menu" color="white" :click="toggle">
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
			<MyAppBar>
			<ToolbarSpacer>
			<List>
				<ListItem> "Sup"
				<ListItem> "Hello"
				<Divider>
				<ListItem> "Sup"
				<ListItem> "Hello"

tag MyCard < Card
	def body
		<@body>
			"Important content goes here"

	def actions
		<@actions>
			<Button ripple=true> "Action 1"
			<Button ripple=true> "Action 2"

tag App
	def render
		<self>
			<MyAppBar>
			<MyDrawer open=data:menuOpen>
			<div .main-content>
				<MyCard outlined=false>



Imba.mount <App[store]>
