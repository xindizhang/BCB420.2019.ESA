% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jaccard_dist.R
\name{jaccard_dist}
\alias{jaccard_dist}
\title{Jaccard Distance.}
\usage{
jaccard_dist(gene1, gene2, graph)
}
\arguments{
\item{gene1}{Character, HGNC symbol of the first gene.}

\item{gene2}{Character, HGNC sysmbol of the second gene}

\item{graph}{igraph object representing the network}
}
\value{
Numeric, distance score
}
\description{
\code{jaccard_dist} calculates the pairwise distance of genes in an interaction network.
}
\details{
Jaccard similarity of 2 nodes in the gene network is calculated. Jaccard similarity
is the number of common neighbors divided by the number of vertices that are
neighbors of at least one of the 2 nodes. Distance is then obtained by taking
1 - similarity.
}
\examples{

STRING <- fetchData("STRINGedges0.8")
# convert the STRINGedges object into an igraph object
if (requireNamespace("igraph")) {
    STRINGgraph <- igraph::graph_from_edgelist(as.matrix(STRING[,1:2]))
} else {
    cat("igraph is required for this example")
}

# calculate the Jaccard network distance between "BRCA1" and "BRCA2"
jaccard_dist("BRCA1", "BRCA2", STRINGgraph)

}
\author{
\href{https://orcid.org/0000-0001-5724-2252}{Rachel Silverstein} (aut)
}
