import 'imba-router'

import {AppBarTitle, TopAppBar} from '../../src/top-app-bar/top-app-bar'
import {IconButton} from '../../src/icon-button/icon-button'
import {ToolbarSpacer, Drawer} from '../../src/drawer/drawer'
import {List, ListItem, Divider} from '../../src/list/list'
import {Typography} from '../../src/typography/typography'
import {Components} from './components'
import {componentlist} from './componentlist'

var store = {
	menuOpen: false
	components: componentlist
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
						<a route-to=component:link> component:name

tag App
	def render
		<self>
			<Typography>
				<DocsAppBar>
				<div>
					<DocsDrawer[data] open=data:menuOpen>

				<div .main-content>
					<Components[data:components] route="/material-imba/">

Imba.mount <App[store]>
