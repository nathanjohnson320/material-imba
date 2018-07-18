import {Converter} from 'showdown'

export tag Markdown
  prop text
  prop html

  def mount
    var converter = Converter.new
    var html = converter.makeHtml(@text)
    @dom:innerHTML = html

    Imba.commit

  def render
    <self.markdown-body>
