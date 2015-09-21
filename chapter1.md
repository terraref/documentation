# Overview


\section{Overview of Timeline}

\begin{table}[h]
\centering
%\caption{My caption}
\label{my-label}
\begin{tabular}{lp{7cm}p{4cm}p{4cm}}
\toprule
Year & Activities & Deliverables & Success Criteria \\ \midrule
1  & Develop TERRA data access and analysis platform & Deploy, Test, and Refine GFE data stream to IL & Phenotype extraction pipeline  \\
 & Establish Core Pipeline &  & Continuous extraction of derived phenotypes  \\
 & Define standard data products &  & within 48 hours of collection  \\
 & Cat 5 team access to Level 1 and above data products through data access and analysis platform &  &  \\
 & Data standards v0 released with samples available for feedback &  &  \\
 & Web based portal to data access and computing available for internal testing &  &  \\

2 & Design and implement first version of geospatial database & Link BETYdb to genomics database & Web portal with data access and computing environments  \\
 & Develop standards compliance tests and QA/QC for all data products &   &Phenotypic data provided \\
 & Capacity to query sensor data given a genotype identifier, and vice-versa &  &  \\
 & Data Standards v1 published with example data sets &  &  \\
 & Custom tools developed by Cat 5 team added to pipeline & &  \\
 & Phenotypic data for ancillary traits, fresh and dry biomass provided &  &  \\
 & Ability for all teams to access and compute on raw and derived data. &  &  \\
 & Twenty derived phenotypes available to users within 48 hours of collection at GFE &  &  \\
3  & Deploy public portal to subset of derived data products & Develop tools to import sensor data to geospatial database & Publicly available mock data cube generator \\
 & Data standards v3 and sample data sets released &  &  \\
 & Public interface to TERRA data access and analysis platform &  & Standard data products available to TERRA teams within 48 hours of data collection \\
4& Enable pipeline provenance tracking & Enable compute intensive algorithms to in geospatial database & Efficient geospatial inference \\
 & All derived data products identified by parent data and processing algorithm &  & 100x faster computing on array database than on raw image files. \\ \bottomrule
\end{tabular}
\end{table}


\section{Data Storage and Computing Pipeline}


\begin{marginfigure}
\caption{Components of the Lemnatec Field Scanalyzer system}
\includegraphics[]{figures/field_scanalyzer.jpg}
\end{marginfigure}

\begin{marginfigure}
\includegraphics[]{figures/field_scanalyzer_gantry.jpg}
\end{marginfigure}

The data processing system proposed here will deliver reference phenotyping data of unprecedented quality and quantity and analytics resources that will drive improved breeding of new high-yielding Sorghum cultivars. This data processing system will facilitate data sharing and re-use of data by providing metadata, provenance for derived data sets, and standardized data processing workflows.


We will develop a data storage and computing system that provides researchers with access to all of the `raw' data and derived plant phenotypes (traits). Most of the data volume will come from a \href{http://www.lemnatec.com/products/hardware-solutions/scanalyzer-field/}{Lemnatec Scanalyzer Field System} platform in Arizona, and will be accompanied by data from aerial, ground, and tractor-based field sensors. Danforth has an indoor phenotyping system - automated sensing of plants in boxes. At the USDA research station in Maricopa, AZ a Lemnatec field platform will be installed over a field of sorghum and run for four years. This will be complimented by an indoor system for automated sensing of plants in boxes.



\section{Data Products and Standards Committee}

\begin{itemize}