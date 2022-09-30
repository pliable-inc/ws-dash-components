import React, {Component} from 'react';
import PropTypes from 'prop-types';

import Uppy from '@uppy/core'
import AwsS3 from '@uppy/aws-s3'
import { DragDrop } from '@uppy/react'

import '@uppy/core/dist/style.css'
import '@uppy/drag-drop/dist/style.css'


export default class S3Upload extends Component {
    constructor() {
        super();

        this.uppy = new Uppy({
            meta: { type: 'avatar' },
            restrictions: { maxNumberOfFiles: 1 },
            autoProceed: true,
          })
          
        this.uppy.use(AwsS3, {
              limit: 2,
              timeout: 60000,
              getUploadParameters: async (file) => {
                  const response = await fetch(`/file-ingestion/sign-upload-request`,
                      {
                      method: 'POST',
                      headers: {
                          'Content-Type': 'application/json'
                      },
                      body: JSON.stringify({
                          filename: file.name,
                          schema: 'skypark|class1_daily|text/csv',
                          mime_type: file.type
                      }),
                      credentials: 'include'
                      });
          
                      const obj = await response.json();
                      let headers = {};
                      headers['content-type'] = file.type;
                      return { 
                          method: 'PUT', 
                          url: obj.upload_url,
                          headers
                       }
              }
          })
          
          this.uppy.on('complete', (result) => {
            const url = result.successful[0].uploadURL
            store.dispatch({
              type: 'SET_USER_AVATAR_URL',
              payload: { url },
            })
          })
    }


    render() {
        const {
            id,
            loading_state,
        } = this.props;
        return (
            <div
                id={id}
                data-dash-is-loading={
                    (loading_state && loading_state.is_loading) || undefined
                }
            >
                <DragDrop
                    uppy={this.uppy}
                    locale={{
                    strings: {
                        // Text to show on the droppable area.
                        // `%{browse}` is replaced with a link that opens the system file selection dialog.
                        dropHereOr: 'Drop here or %{browse}',
                        // Used as the label for the link that opens the system file selection dialog.
                        browse: 'browse',
                    },
                    }}
                />
            </div>
        );
    }
}

S3Upload.defaultProps = {};

S3Upload.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.string.isRequired,

    /**
     * The value displayed in the input.
     */
    value: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};
