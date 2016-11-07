#PlantCV Data Product Creation

This data originates from the Bellwether Phenotyping Facility LemnaTec Scanalyzer 3D at the Donald Danforth Plant Science Center. VIS/NIR images are captured at several angles to generate trait metadata. The trait metadata is associated with the source images in Clowder, and uploaded to the configured BETYdb instance.


_Input_

 - Evaluation is triggered whenever a file is added to a dataset
 - Following images must be found
  - 4x NIR side-view = NIR_SV_0, NIR_SV_90, NIR_SV_180, NIR_SV_270
  - 1x NIR top-view = NIR_TV
  - 4x VIS side-view = VIS_SV_0, VIS_SV_90, VIS_SV_180, VIS_SV_270
  - 1x VIS top-view = VIS_TV
 - Per-image metadata in Clowder is required for BETYdb submission; this is how barcode/genotype/treatment/timestamp are determined.

_Output_

 - Each image will have new metadata appended in Clowder including measures like height, area, perimeter, and longest_axis
 - Average traits for the dataset (10 images) are inserted into a CSV file and added to the Clowder dataset
 - If configured, the CSV will also be sent to BETYdb


