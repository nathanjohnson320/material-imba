import {Button} from './button/button'
# import {Icon, Sizes} from './icon/icon'
import {Grid, Row, Column} from './grid/grid'
import {Drawer, ToolbarSpacer} from './drawer/drawer'
import {TopAppBar, AppBarTitle} from './top-app-bar/top-app-bar'
import {Icon, Sizes} from './icon/icon'
import {List, ListItem, Divider} from './list/list'
import {Card} from './card/card'
import {Textfield, Textarea} from './textfield/textfield'
import {Checkbox} from './checkbox/checkbox'
import {Chips} from './chip/chip'
import {Dialog, DialogActionButton} from './dialog/dialog'
import {Fab} from './fab/fab'

var store = {
	menuOpen: false
	dialog: {
		open: false
		accepted : false
	}
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

	def build
		@chips = [
			{
				text: "One"
				icon: "favorite"
				leading: true
			},
			{
				text: "Two"
				icon: "movie"
				trailing: true
			},
			{
				text: "Three"
				icon: "menu"
				leading: true
			}
		]

	def body
		<@body>
			<Textfield outline=true label="My input {x}">
			<Checkbox label="Checkin">
			<Chips items=@chips>

	def actions
		<@actions>
			<Button ripple=true> "Action 1"
			<Button ripple=true> "Action 2"

tag MyDialog < Dialog
	def header
		<@header>
			"Title goes here"

	def body
		<@body>
			"Some inner body dialog content"

	def footer
		<@footer>
			<DialogActionButton cancel=true> "Cancel"
			<DialogActionButton accept=true> "Accept"

tag App
	def openDialog
		data:dialog:open = true

	def ondialogstate e
		data:dialog:accepted = e.data:accepted

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
					<Row>
						<Column width=12>
							<MyDialog[data:dialog] scrollable=false>
							<Button :click="openDialog"> "Open Dialog"
							<div> "Dialog Accepted {data:dialog:accepted}"
					<Row>
						<Column width=12>
							<Fab ripple=true extended=true> "Hay"

Imba.mount <App[store]>
