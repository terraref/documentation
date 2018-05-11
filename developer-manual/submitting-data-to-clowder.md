# Submitting data to Clowder

## Web Interface Data Uploads

1. Log in with your account
2. Click 'Datasets' &gt; 'Create'
3. Provide a name and description
4. Click 'Select Files' to choose which files to add
5. Click 'Upload' to save selected files to dataset
6. Click 'View Dataset' to confirm. You can add more content with 'Add Files'.
7. Add metadata, terms of use, etc.

Some metadata may automatically be generated depending on the types of files uploaded. Metadata can be manually added to files or datasets at any time.

## API Data Uploads

Clowder also includes a RESTful API that allows programmatic interactions such as creating new datasets and downloading files. For example, one can request a list of datasets using: GET \_clowder home URL\_/api/datasets. The current API schema for a Clowder instance can be accessed by selecting API from the ? Help menu in the upper-right corner of the application.

For typical workflows, the following steps are sufficient to push data into Clowder in an organized fashion:

1. Create a collection to hold relevant datasets \(optional\) `POST /api/collections` _provide a name; returns collection ID_
2. Create a dataset to hold relevant files and add it to the collection `POST /api/datasets/createempty` _provide a name; returns dataset ID_ `POST /api/collections/<collection id>/datasets/<dataset id>`
3. Upload files and metadata to dataset `POST /api/datasets/uploadToDataset/<dataset id>` _provide file\(s\) and metadata_

An extensive API reference can be found [_here_](https://terraref.ncsa.illinois.edu/clowder/assets/docs/api/index.html).

## Uploading Data Using Globus

Some files, e.g. those transferred via Globus, will be moved to the server without triggering Clowder's normal upload paths. These must be transmitted in a certain way to ensure proper handling.

1. Log into [_Globus _](https://docs.globus.org/)and click 'Transfer Files'.
2. Select your source endpoint, and Terraref as the destination. You need to contact NCSA to ensure you have the necessary credentials and folder space to utilize Globus - unrecognized Globus accounts will not be trusted.
3. Transfer your files. You will receive a Task ID when the transfer starts.
4. Send this Task ID and requisite information about the transfer to the TERRAREF Globus Monitor API as a JSON object:

   ```javascript
   { "user": &lt;globus\_username&gt;
   "globus\_id": &lt;Task ID&gt;
   "contents": {
   &lt;dataset1&gt;: {
   &lt;filename1&gt;: {
   "name": &lt;filename1&gt;,
   "md": &lt;file\_metadata1&gt;
   },
   &lt;filename2&gt;: {"name": ..., "md": {...}},
   &lt;filename3&gt;: {...},
   ...
   },
   &lt;dataset2&gt;: {
   &lt;filename4&gt;: {...},
   ...
   },
   ...
   }
   }
   }
   ```

   In addition to username and Task ID, you must also send a "contents" object containing each dataset that should be created in Clowder, and the files that belong to that dataset. This allows Clowder to verify it has handled every file in the Globus task.

5. The JSON object is sent to the API via an HTTP request: `POST 141.142.168.72:5454/tasks` For example, with cURL this would be done with: `curl -X POST -u <globus_username>:<globus_password> -d <json_object> 141.142.168.72:5454/tasks`

In this way Clowder indexes a pointer to the file on disk rather than making a new copy of the file; thus the file will still be accessible via Globus, FTP, or other methods directed at the filesystem.

