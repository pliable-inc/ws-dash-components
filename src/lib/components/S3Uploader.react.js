import React, {Component} from 'react';
import PropTypes from 'prop-types';

import Uppy from '@uppy/core'
import AwsS3 from '@uppy/aws-s3'
import { DragDrop } from '@uppy/react'

import '@uppy/core/dist/style.css'
import '@uppy/drag-drop/dist/style.css'


export default class S3Uploader extends Component {
    constructor() {
        super();

        this.uppy = new Uppy({
            meta: { type: 'avatar' },
            restrictions: { maxNumberOfFiles: 100 },
            autoProceed: true,
          })
          
        this.uppy.use(AwsS3, {
              limit: 5,
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
                          schema: this.props.schema_id,
                          mime_type: file.type
                      }),
                      credentials: 'include'
                      });
          
                      const signed_upload_req = await response.json();

                      let new_upload = Object.assign({}, file);
                      new_upload.upload_uuid = signed_upload_req.upload_uuid;
                      new_upload.storage_key = signed_upload_req.storage_key;

                      // set file info to state
                      let new_files = {}
                      new_files[file.id] = new_upload
                      this.props.setProps({
                        "files": new_files
                      })

                      // return upload parameters
                      let headers = {};
                      headers['content-type'] = file.type;
                      return { 
                          method: 'PUT', 
                          url: signed_upload_req.upload_url,
                          headers
                       }
              }
          })

          this.uppy.on('upload-progress', (file, progress) => {
                let file_updates = Object.assign({}, this.props.files[file.id]);
                file_updates.progress.bytesUploaded = progress.bytesUploaded;
                file_updates.progress.bytesTotal = progress.bytesTotal;
                file_updates.progress.percentage = parseInt((progress.bytesUploaded/progress.bytesTotal) * 100);
                let updates = {}
                updates[file.id] = file_updates;
                this.props.setProps({
                    "files": updates
                })
                
          });

          this.uppy.on('upload-success', (file, response) => {
                let file_updates = Object.assign({}, this.props.files[file.id]);
                file_updates.uploadURL = response.uploadURL;
                file_updates.progress.uploadComplete = true;
                let updates = {}
                updates[file.id] = file_updates;
                this.props.setProps({
                    "files": updates
                })
           });

           this.uppy.on('upload-error', (file, error, response) => {
                let file_updates = Object.assign({}, this.props.files[file.id]);
                file_updates.uploadError = true;
                let updates = {}
                updates[file.id] = file_updates;
                this.props.setProps({
                    "files": updates
                })
            });

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
                { this.props.schema_id &&
                <DragDrop
                    uppy={this.uppy}
                    locale={{
                    strings: {
                        // Text to show on the droppable area.
                        // `%{browse}` is replaced with a link that opens the system file selection dialog.
                        dropHereOr: this.props.label,
                        // Used as the label for the link that opens the system file selection dialog.
                        browse: 'browse',
                    },
                    }}
                /> }
            </div>
        );
    }
}

S3Uploader.defaultProps = {
    files: {},
    label: 'Drop files here or %{browse}',
    parallelUploads: 5,
    maxUploads: 5
};

S3Uploader.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.string.isRequired,


    schema_id: PropTypes.string,

    /**
     * The files being uploaded.
     */
     files: PropTypes.objectOf(PropTypes.object),

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,

    /**
     * Limit the amount of uploads going on at the same time. This is passed through to XHRUpload; 
     * Set to 0 to disable limiting.
     */
    parallelUploads: PropTypes.bigint,

    maxUploads: PropTypes.bigint
};
