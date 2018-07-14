import {Button} from './button/button'
import {Icon, Sizes} from './icon/icon'
var store = {}

tag App
	def render
		<self>
			<Button raised=true disabled=false ripple=true text="Sup" icon="favorite">

Imba.mount <App[store]>
