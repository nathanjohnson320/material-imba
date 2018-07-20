import 'imba-router'

import 'github-markdown-css/github-markdown.css'

import {AppBarTitle, TopAppBar} from '../../src/top-app-bar/top-app-bar'
import {IconButton} from '../../src/icon-button/icon-button'
import {ToolbarSpacer, Drawer} from '../../src/drawer/drawer'
import {List, ListItem, Divider} from '../../src/list/list'
import {Typography} from '../../src/typography/typography'
import {Components} from './components'
import {ComponentView} from './componentview'

import {componentlist} from './componentlist'

var store = {
	menuOpen: false
	components: componentlist
	button: {
		disabled: false
	}
	card: {
		toggled: false
	}
	checkbox: {
		box1: {
			disabled: false
		}
		box2: {
			toggled: false
		}
	}
	chip: {
		chip1: {
			items1: [
				{
					text: "A"
				}
				{
					text: "B"
				}
			]
			items2: [
				{
					text: "A"
					leading: true
					icon: "favorite"
				}
				{
					text: "B"
					leading: true
					icon: "menu"
				}
			]
			items3: [
				{
					text: "A"
					trailing: true
					icon: "favorite"
				}
				{
					text: "B"
					trailing: true
					icon: "menu"
				}
			]
			selected: null
		}
		chip2: {
			selected: []
		}
	}
	dialog: {
	}
	fab: {
	}
	iconbutton: {
		toggled: false
	}
	linearprogress: {
		bar1: {
			open: false
		}
		bar2: {
			open: true
			progress: 0
		}
		bar3: {
			open: true
			progress: 0
			buffer: 0.1
		}
	}
	menu: {
		menu1: {
			open: true
		}
		menu2: {
			open: false
			selected: null
		}
	}
	radio: {
		radio1: {
			checked: true
		}
		radiogroup: {
			items: [{label: "item 1", value: 1}, {label: "item 2", value: 2}]
		}
		radiogroup1: {
			checked: null
		}
	}
	select: {
		select1: {
			options: [{value: "", text: "", disabled: true}, {value: "hello", text: "hello"}, {value: "hello2", text: "hello2"}]
		}
		select2: {
			selected: null
			selectedIndex: null
		}
	}
}

tag DocsAppBar < TopAppBar
	def toggle
		store:menuOpen = !store:menuOpen

	def menu
		<@menu css:display="flex">
			<IconButton ripple=true onicon="menu" :click="toggle" color="white">
			<AppBarTitle css:padding-top="8px"> "Material Imba"

	def actions
		<@actions>
			<div> ""

tag DocsDrawer < Drawer
	def ondrawerstate e
		store:menuOpen = e.data:open

	def body
		<@body>
			<DocsAppBar>
			<ToolbarSpacer>
			<List>
				<ListItem>
					<a route-to='/material-imba/'> 'Components'
				<Divider>
				for component in data:components
					<ListItem>
						<a route-to="/material-imba{component:link}"> component:name

tag App
	def render
		<self>
			<Typography>
				<DocsAppBar>
				<div>
					<DocsDrawer[data] open=data:menuOpen>

				<div .main-content>
					<Components[data:components] route="/material-imba/">
					<ComponentView[data]>

Imba.mount <App[store]>
