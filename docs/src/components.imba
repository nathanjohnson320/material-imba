import {Grid, Row, Column} from '../../src/grid/grid'
import {Card} from '../../src/card/card'
import {Headline, Subtitle} from '../../src/typography/typography'

export tag Components < Grid
  def render
    <self>
      <Row>
        for component in data
          <Column width=3>
            <ComponentCard[component] height="100%" width="100%" css:padding="10px">

tag ComponentCard < Card
  def body
    <@body>
      <Headline level=6> data:name
      <Subtitle css:color="rgba(0,0,0,.54)" level=2> data:description

  def actions
    <@actions css:width="100%">
      <div .component-actions>
        <a route-to=data:link> "MI Docs"
        <a href=data:mdclink target="_blank"> "MDC Docs"
