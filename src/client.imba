import {Button} from './button/button'
import {Icon, Sizes} from './icon/icon'
import {Grid, Row, Column} from './grid/grid'
var store = {}

tag App
	def render
		<self>
			<Button ripple=true> "Yo dawg"
			<Grid>
				<Row>
					<Column width=4> "SAD"
					<Column width=2> "SAD"
					<Column width=2> "SAD"


Imba.mount <App[store]>
