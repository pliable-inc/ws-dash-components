import React, { Component } from 'react';
import PropTypes from 'prop-types';

import '@silevis/reactgrid/styles.css'
import { ReactGrid, Column, Row } from '@silevis/reactgrid';

export default class Table extends Component {
    render() {
        const { rows, columns, enableRangeSelection, enableRowSelection, enableColumnSelection } = this.props;
        return (
            <ReactGrid
                rows={rows}
                columns={columns}
                enableRangeSelection={enableRangeSelection}
                enableRowSelection={enableRowSelection}
                enableColumnSelection={enableColumnSelection}
                stickTopRows={1}
            />
        );
    }
}

Table.defaultProps = {};

Table.propTypes = {
    rows: PropTypes.array,
    columns: PropTypes.array,
    setProps: PropTypes.func,
    enableRangeSelection: PropTypes.bool,
    enableRowSelection: PropTypes.bool,
    enableColumnSelection: PropTypes.bool,
};