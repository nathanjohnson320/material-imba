import {MDCDataTable} from '@material/data-table';

import "@material/data-table/mdc-data-table.scss";

tag mtl-table-row < tr
  def render
    <self .mdc-data-table__row>
      <slot>

tag mtl-table-header-row < tr
  def render
    <self.mdc-data-table__header-row>
      <slot>

tag mtl-table-header < th
  @numeric = false

  def render
    <self
      .mdc-data-table__header-cell
      .mdc-data-table__header-cell--numeric=@numeric
      role="columnheader" scope="col"
    >
      <slot>

tag mtl-table-cell < td
  @numeric = false

  def render
    <self
      .mdc-data-table__cell
      .mdc-data-table__cell--numeric=@numeric
    >
      <slot>

tag mtl-table-content < tbody
  def render
    <self.mdc-data-table__content>
      <slot>

tag mtl-table
  @label

  def mount
    @dataTable = MDCDataTable.new(self.children[0]);

  def render
    <self>
      <div .mdc-data-table>
        <table .mdc-data-table__table aria-label=@label>
          <thead>
            <slot name="header">

          <slot name="body">
