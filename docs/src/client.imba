import 'imba-router'

import {AppBarTitle, TopAppBar} from '../../src/top-app-bar/top-app-bar'
import {IconButton} from '../../src/icon-button/icon-button'
import {ToolbarSpacer, Drawer} from '../../src/drawer/drawer'
import {List, ListItem, Divider} from '../../src/list/list'
import {Typography} from '../../src/typography/typography'

import {Components} from './components'

var store = {
	menuOpen: false
	components: [
		{
			name: "Button"
			description: "Buttons allow users to take actions, and make choices, with a single tap."
			link: "/button"
			mdclink: "https://material.io/design/components/buttons.html"
		},
		{
			name: "Card"
			description: "Cards contain content and actions about a single subject."
			link: "/card"
			mdclink: "https://material.io/go/design-cards"
		},
		{
			name: "Checkbox"
			description: "Checkboxes allow the user to select one or more items from a set."
			link: "/checkbox"
			mdclink: "https://material.io/go/design-checkboxes"
		},
		{
			name: "Chip"
			description: "Chips are compact elements that allow users to enter information, select a choice, filter content, or trigger an action."
			link: "/chips"
			mdclink: "https://material.io/go/design-chips"
		},
		{
			name: "Dialog"
			description: "Dialogs inform users about a task and can contain critical information, require decisions, or involve multiple tasks."
			link: "/dialog"
			mdclink: "https://material.io/design/components/dialogs.html"
		},
		{
			name: "Fab"
			description: "A floating action button represents the primary action in an application."
			link: "/fab"
			mdclink: "https://material.io/go/design-fab"
		},
		{
			name: "Grid"
			description: "Material design’s responsive UI is based on a column-variate grid layout. It has 12 columns on desktop, 8 columns on tablet and 4 columns on phone."
			link: "/grid"
			mdclink: "https://material.io/design/layout/responsive-layout-grid.html#responsive-ui-grid"
		},
		{
			name: "Icon"
			description: "Material icons are delightful, beautifully crafted symbols for common actions and items."
			link: "/icon"
			mdclink: "https://material.io/tools/icons/?style=baseline"
		},
		{
			name: "IconButton"
			description: "Icon buttons allow users to take actions, and make choices, with a single tap."
			link: "/icon-button"
			mdclink: "https://material.io/go/design-buttons#toggle-button"
		},
		{
			name: "ImageList"
			description: "An Image List consists of several items, each containing an image and optionally supporting content (i.e. a text label)."
			link: "/image-list"
			mdclink: "https://material.io/go/design-image-list"
		},
		{
			name: "List"
			description: "Lists are continuous, vertical indexes of text or images."
			link: "/list"
			mdclink: "https://material.io/design/components/lists.html"
		},
		{
			name: "Textfield"
			description: "Text fields allow users to input, edit, and select text."
			link: "/textfield"
			mdclink: "https://material.io/go/design-text-fields"
		},
		{
			name: "TopAppBar"
			description: "MDC Top App Bar acts as a container for items such as application title, navigation icon, and action items."
			link: "/top-app-bar"
			mdclink: "https://material.io/go/design-app-bar-top"
		},
		{
			name: "Typography"
			description: "The type scale is a combination of 13 styles that are supported by the type system. It contains reusable categories of text, each with an intended application and meaning."
			link: "/typography"
			mdclink: "https://material.io/design/typography/the-type-system.html#type-scale.html"
		},
	]
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
					<a route-to='/'> 'Components'
				<Divider>
				<ListItem>
					<a route-to='/home'> 'Home'
				<ListItem> "Sup"
				<ListItem> "Hello"

tag App
	def render
		<self>
			<Typography>
				<DocsAppBar>
				<div>
					<DocsDrawer open=data:menuOpen>

				<div .main-content>
					<Components[data:components] route="/">

Imba.mount <App[store]>
