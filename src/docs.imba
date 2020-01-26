import './styles.css'
import './button'
import './typography'
import './top-app-bar'
import './icon-button'
import './drawer'
import './card'
import './checkbox'
import './chips'
import './dialog'
import './fab'
import './grid'
import './linear-progress'
import './list'
import './menu'
import './radio'
import './select'
import './slider'
import './snackbar'
import './switch'
import './tabs'
import './textfield'
import './data-table'

var store = {
	menu: {
		open: false
	}
	checkbox: {
		checked: false
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
	snacks: {
		open: false
	}
	textfield: {
		value: ""
	}
	modal: {
		open: false
	}
}

tag app-root
	def toggle
		store.menu.open = !store.menu.open

	def opensnack
		store.snacks.open = true

	def openmodal
		store.modal.open = true

	def render
		<self>
			<mtl-typography>
				<mtl-top-app-bar short=true>
					<div css:display="flex" slot="menu">
						<mtl-icon-button alwayson=true ripple=true onicon="menu" color="white" :click.toggle>
						<mtl-app-bar-title css:padding-top="8px">
							<a css:text-decoration="none" css:color="#FFF" route-to="/material-imba/"> "Material Imba"
					<div slot="actions">
						<div> ""

				<mtl-drawer[store.menu] modal=true>
					<span slot="headertitle"> "Material Imba"
					<span slot="headersubtitle"> "Its great"
					<nav .mdc-list slot="content">
						<a.mdc-list-item.mdc-list-item--activated href="#" aria-current="page">
							<i.material-icons.mdc-list-item__graphic aria-hidden="true"> "inbox"
							<span.mdc-list-item__text> "Inbox"
						<a.mdc-list-item href="#">
							<i.material-icons.mdc-list-item__graphic aria-hidden="true"> "send"
							<span.mdc-list-item__text> "Outgoing"
						<a.mdc-list-item href="#">
							<i.material-icons.mdc-list-item__graphic aria-hidden="true"> "drafts"
							<span.mdc-list-item__text> "Drafts"
				
				<section .main-content>
					<mtl-headline level=4>
						<p> "Hello there!!"
					<mtl-button
						ripple=true
						raised=true
						:click.openmodal
					>
						"Open dialog"

					<mtl-checkbox[store.checkbox] label="Yo">
					<mtl-chips items=store.chip.chip1.items2>
					<mtl-fab mini=true icon="menu" ripple=true>
					<mtl-grid>
						<mtl-row>
							<mtl-column width=6>
								<mtl-list>
									<mtl-list-item>
										"Huh?"
									<mtl-list-item>
										"Huh?"
									<mtl-list-item>
										"Huh?"
									<mtl-list-divider>
									<mtl-list-item>
										"Huh?"

							<mtl-column width=6>
								<mtl-linear-progress indeterminate=true>
								<mtl-menu items=['hi', 'hello', 'holà']>
								<mtl-radio-group items=[{label: 'Testing', value: 'stuff'}, {label: 'Testing 2', value: 'Other stuff'}]>
						<mtl-select selected=1 options=[{value: 1, text: 'one'}, {value: 2, text: 'two'}]>
						<mtl-slider step=10 min=5 max=200 discrete=true>
						<mtl-fab mini=true icon="menu" ripple=true :click.opensnack>
						<mtl-snackbar[store.snacks] label="Hello" action-text="Nice">
						<mtl-card>
							<mtl-card-actions>
								<div slot="buttons">
									"Stuff"
						<mtl-switch>
						<mtl-tabs>
							<mtl-tab-scroller>
								<mtl-tab label="stuff">
								<mtl-tab label="more stuff">
								<mtl-tab label="even more stuff">
						<mtl-textarea[store.textfield] outline=true label="stuff">
						<span> "Value: {store.textfield.value}"
					<mtl-table label="stuff">
						<mtl-table-header-row slot="header">
							<mtl-table-header> "Stuff"
							<mtl-table-header numeric=true> "More stuff"
							<mtl-table-header> "Event more stuff"
						<mtl-table-content slot="body">
							<mtl-table-row>
								<mtl-table-cell> "One"
								<mtl-table-cell numeric=true> "Two"
								<mtl-table-cell> "Three"
							<mtl-table-row>
								<mtl-table-cell> "Four"
								<mtl-table-cell numeric=true> "Five"
								<mtl-table-cell> "Six"

					<mtl-dialog[store.modal]>
						<div slot="title">
							"Sup dudes"
						<div slot="body">
							<div> "Not much"
						<div slot="footer">
							<mtl-dialog-action-button accept=true>
								"Yes"
							<mtl-dialog-action-button cancel=true>
								"No"


