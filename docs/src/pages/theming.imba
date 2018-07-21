import {Markdown} from "../markdown"
import {DemoBlock} from "../demo-block"
import {Headline, Subtitle} from "../../../src/typography/typography"

var css = '
<br>\n
### Example \n
```css\n
// Theme for the entire page\n
:root {\n
  --mdc-theme-on-secondary: #FFF;\n
  --mdc-theme-primary: #C00;\n
}\n
\n
// Theming just the app bar\n
.mdc-top-app-bar {\n
  --mdc-theme-on-secondary: #FFF;\n
  --mdc-theme-primary: #C00;\n
}\n
```\n
'

export tag Theming
  def render
    <self>
      <Headline level=4> "Theming"
      <br>
      <Subtitle level=2> "Theming can be done with css variables as supported in the mdc library."
      <Markdown text=css>
      <br>
      <table>
        <thead>
          <tr>
            <th> "Custom property"
            <th> "Description"
        <tbody>
          <tr>
            <td> "--mdc-theme-primary"
            <td> "The theme primary color."
          <tr>
            <td> "--mdc-theme-secondary"
            <td> "The theme secondary color."
          <tr>
            <td> "--mdc-theme-surface"
            <td> "The theme surface color."
          <tr>
            <td> "--mdc-theme-background"
            <td> "The theme background color."
          <tr>
            <td> "--mdc-theme-on-primary"
            <td> "Primary text on top of a theme primary color background."
          <tr>
            <td> "--mdc-theme-on-secondary"
            <td> "Secondary text on top of a theme primary color background."
          <tr>
            <td> "--mdc-theme-on-surface"
            <td> "Hint text on top of a theme primary color background."
          <tr>
            <td> "--mdc-theme-text-primary-on-background"
            <td> "Primary text on top of the theme background color."
          <tr>
            <td> "--mdc-theme-text-secondary-on-background"
            <td> "Secondary text on top of the theme background color."
          <tr>
            <td> "--mdc-theme-text-hint-on-background"
            <td> "Hint text on top of the theme background color."
          <tr>
            <td> "--mdc-theme-text-disabled-on-background"
            <td> "Disabled text on top of the theme background color."
          <tr>
            <td> "--mdc-theme-text-icon-on-background"
            <td> "Icons on top of the theme background color."
          <tr>
            <td> "--mdc-theme-text-primary-on-light"
            <td> "Primary text on top of a light-colored background."
          <tr>
            <td> "--mdc-theme-text-secondary-on-light"
            <td> "Secondary text on top of a light-colored background."
          <tr>
            <td> "--mdc-theme-text-hint-on-light"
            <td> "Hint text on top of a light-colored background."
          <tr>
            <td> "--mdc-theme-text-disabled-on-light"
            <td> "Disabled text on top of a light-colored background."
          <tr>
            <td> "--mdc-theme-text-icon-on-light"
            <td> "Icons on top of a light-colored background."
          <tr>
            <td> "--mdc-theme-text-primary-on-dark"
            <td> "Primary text on top of a dark-colored background."
          <tr>
            <td> "--mdc-theme-text-secondary-on-dark"
            <td> "Secondary text on top of a dark-colored background."
          <tr>
            <td> "--mdc-theme-text-hint-on-dark"
            <td> "Hint text on top of a dark-colored background."
          <tr>
            <td> "--mdc-theme-text-disabled-on-dark"
            <td> "Disabled text on top of a dark-colored background."
          <tr>
            <td> "--mdc-theme-text-icon-on-dark"
            <td> "Icons on top of a dark-colored background."
