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
					<Column width=4> "1"
					<Column width=2> "2"
					<Column width=2> "3"
				<Row>
					<Column width=12>
						<div css:textAlign="center">
							"Yay full row"


Imba.mount <App[store]>
