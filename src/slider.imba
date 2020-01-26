import {MDCSlider} from "@material/slider"
import "@material/slider/mdc-slider.scss"

tag mtl-slider
  @min = 0
  @max = 100
  @step
  @discrete
  @disabled
  @trackmarks

  def mount
    @slider = MDCSlider.new self.children[0]
    @slider.min = @min
    @slider.max = @max
    @slider.step = @step
    @slider.disabled = @disabled

    self.addEventListener "MDCSlider:change", do
      if @model
        @model.value = @slider.value
        imba.commit

  def render
    <self>
      <div .mdc-slider
        .mdc-slider--discrete=@discrete
        .mdc-slider--display-markers=@trackmarks
        tabindex="0"
        role="slider"
      >
        <div.mdc-slider__track-container>
          <div.mdc-slider__track>
          if @trackmarks
            <div.mdc-slider__track-marker-container>
        <div.mdc-slider__thumb-container>
          if @discrete
            <div.mdc-slider__pin>
              <span.mdc-slider__pin-value-marker>
          <svg:svg class="mdc-slider__thumb" width="21" height="21">
            <svg:circle cx="10.5" cy="10.5" r="7.875">
          <div.mdc-slider__focus-ring>