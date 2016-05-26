# bash-tools
Personal repo for keeping track of a disorganized and disjointed collection of data wrangling related bash scripts.

##### usgs-ned.sh
For daisy-chaining [USGS National Elevation Dataset](http://nationalmap.gov/elevation.html) (NED) rasters once they've been sorted into folders by location (e.g. folder structure /**n42**/n42w123). Have not yet added handlers for running this without first sorting by location, that's on the task queue. This is for the most part being used on a per-state demo basis, so it works fine as is for now.


##### usgs-elev_unzip.sh
For batch extracting and renaming USGS elevation contours (in this case from this [location](ftp://rockyftp.cr.usgs.gov/vdelivery/Datasets/Staged/Elev/Shape/)), known issues with naming schema inconsistencies.


##### usgs-state_unzip.sh
For batch extracting and renaming [USGS boundary data](http://nationalmap.gov/boundaries.html).


##### usgs-nhd_clip.sh
For batch clipping [USGS National Hydrology Dataset](http://nhd.usgs.gov/) (NHD) vector data by the state boundary from the USGS boundary dataset.
