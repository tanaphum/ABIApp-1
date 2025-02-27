% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ABI_Helminth.R
\name{ABI_Helminth}
\alias{ABI_Helminth}
\title{A tool for helminth species delimitation at various taxonomic levels}
\usage{
ABI_Helminth(
  distance = 0,
  Fastafile = NULL,
  fastaSelect1 = 1,
  fastaSelect2 = 2,
  group = "NAS",
  marker = "18S rRNA"
)
}
\arguments{
\item{distance}{Numeric. Number >= 0 (From our database the number should be 0.000 - 0.909).This argument can be used when a `Fastafile` is `NULL`.}

\item{Fastafile}{Character. File path to the FASTA file containing sequence data. If this is specified, the user must also provide `fastaSelect1` and `fastaSelect2` to identify taxa within the file. If `Fastafile` is `NULL`, the function will use the `distance` argument instead.}

\item{fastaSelect1}{Character or Numeric. Identifier (label or index) for the 1st taxon in the FASTA file. Required when `Fastafile` is provided.}

\item{fastaSelect2}{Character or Numeric. Identifier (label or index) for the 2nd taxon in the FASTA file. Required when `Fastafile` is provided.}

\item{group}{Character. Group of Helminth ("NAS","NS","NT","TR","TRD","CE")
\describe{
• "NAS" is "Nematode (Ascaridida and Spirurida) "
}
\describe{
• "NS"  is "Nematode (Strongylida)"
}
\describe{
• "NT"  is "Nematode (Trichocephalida)"
}
\describe{
• "TR"  is "Trematode (Plagiorchiida)"
}
\describe{
• "TRD" is "Trematode (Diplostomida)"
}
\describe{
• "CE"  is "Cestode"
}}

\item{marker}{Character. Helminth Genetic Markers
("18S rRNA","28S rRNA","ITS1","ITS2","COI","COII","cytB","NAD1","12S rRNA","16S rRNA")}
}
\value{
Returns a ggplot object visualizing the genetic distance and relationships between the selected taxa.
}
\description{
A tool for helminth species delimitation at various taxonomic levels
}
\details{
The `ABI_Helminth` function allows users to perform species delimitation of helminths using two approaches:
\describe{
1. Directly specifying a numeric distance for comparison between taxa.
users can specify a genetic distance (e.g., `distance = 0.05`) to generate visualizations based on predefined relationships.
}
\describe{
2. Providing a FASTA file containing sequence data for the taxa of interest.
In the second approach, users can input a FASTA file (`Fastafile`) and select specific taxa using their indices or labels (via `fastaSelect1` and `fastaSelect2`) for detailed pairwise comparison. This flexibility enables users to either work with summary-level data or perform detailed analyses using sequence data.
}
}
\examples{
# Approach 1: Specify distance directly
# Basic usage
library(ABIApp)

# Specify distance only
ABI_Helminth(distance = 0.06)

# Add specify group and marker
ABI_Helminth(distance = 0.5,group = "CE",marker = "ITS2")

# Approach 2: Use a FASTA file
# Fastafile Ex
Fastafile <- system.file("ABI/www/Ex/Example_data.fasta", package = "ABIApp")

# Select with numbers
ABI_Helminth(Fastafile=Fastafile,
group = "NT",marker = "18S rRNA",
fastaSelect1 = 1, fastaSelect2 = 2
)

# Select with number and text (mixed )
ABI_Helminth(Fastafile=Fastafile,
group="NT",marker="18S rRNA",
fastaSelect1 = "COI_T_14M.1", fastaSelect2 = 2
)

# Select with text labels
ABI_Helminth(Fastafile=Fastafile,
group="NT",marker="18S rRNA",
fastaSelect1 = "COI_T_14M.1", fastaSelect2 = "KT449823_Trichuris_suis_COI"
)

}
