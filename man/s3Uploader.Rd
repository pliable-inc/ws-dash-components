% Auto-generated: do not edit by hand
\name{s3Uploader}

\alias{s3Uploader}

\title{S3Uploader component}

\description{

}

\usage{
s3Uploader(id=NULL, files=NULL, label=NULL, maxUploads=NULL,
parallelUploads=NULL, schema_id=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{files}{List with named elements and values of type named list. The files being uploaded.}

\item{label}{Character. A label that will be printed when this component is rendered.}

\item{maxUploads}{}

\item{parallelUploads}{Limit the amount of uploads going on at the same time. This is passed through to XHRUpload; 
Set to 0 to disable limiting.}

\item{schema_id}{Character. }
}

\value{named list of JSON elements corresponding to React.js properties and their values}

