import {Button} from './button/button'
# import {Icon, Sizes} from './icon/icon'
import {Grid, Row, Column} from './grid/grid'
import {Drawer, ToolbarSpacer} from './drawer/drawer'
import {TopAppBar, AppBarTitle} from './top-app-bar/top-app-bar'
import {Icon, Sizes} from './icon/icon'
import {List, ListItem, Divider} from './list/list'
import {Card} from './card/card'
import {Textfield, Textarea} from './textfield/textfield'

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
	prop x

	def body
		<@body>
			<Textfield disabled=false label="My input {x}">
			<Textarea disabled=false label="My input {x}">

	def actions
		<@actions>
			<Button ripple=true> "Action 1"
			<Button ripple=true> "Action 2"

tag App
	def render
		<self>
			<MyAppBar>
			<div>
				<MyDrawer open=data:menuOpen>
			<div .main-content>
				<Grid>
					<Row>
						for x in [1,2,3]
							<Column width=4>
								<MyCard width="100%" x=x>



Imba.mount <App[store]>
