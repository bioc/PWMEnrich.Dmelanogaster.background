\name{datasets-bg-JASPAR}
\alias{PWMLogn.dm3.jaspar.insects}
\alias{PWMCutoff4.dm3.jaspar.insects}
\alias{PWMCutoff5.dm3.jaspar.insects}
\alias{PWMGEV.dm3.jaspar.insects}
\alias{PWMPvalueCutoff1e2.dm3.jaspar.insects}
\alias{PWMPvalueCutoff1e3.dm3.jaspar.insects}
\alias{PWMPvalueCutoff1e4.dm3.jaspar.insects}
\docType{data}

\title{
  Pre-compiled backgrounds for JASPAR database for D. melanogaster.
}
\description{
  A set of pre-compiled backgrounds for enrichment analysis of motifs from the JASPAR insects motif database. The backgrounds
  were pre-compiled using unique promoters of Drosophila melanogaster. 
  
  \itemize{
  	\item \code{PWMLogn.dm3.jaspar.insects} - pre-compiled threshold-free lognormal background for JASPAR insects PWMs. 
  	The lognormal distribution is fitted to 1kb fragments of 10031 2kb Drosophila Melanogaster (dm3) promoters. 
  	For each gene one promoter is taken (from the first transcript). 
  	
  	\item \code{PWMCutoff4.dm3.jaspar.insects}, \code{PWMCutoff5.dm3.jaspar.insects} - pre-compiled Z-score background with cutoff of 4 and 5 (base e) for 
  	JASPAR insects PWMs. The number of hits above the score cutoff is counted in 10031 2kb Drosophila Melanogaster
  	(dm3) promoters. For each gene one promoter is taken (from the first transcript). 
  	
  	\item \code{PWMPvalueCutoff1e2.dm3.jaspar.insects}, \code{PPWMPvalueCutoff1e3.dm3.jaspar.insects},
  	\code{PPWMPvalueCutoff1e4.dm3.jaspar.insects} - pre-compiled Z-score background with P-value cutoff of 0.01, 0.001, and 0.0001 for 
  	JASPAR insects PWMs. The number of hits with smaller P-value than cutoff is counted in 10031 2kb Drosophila Melanogaster
  	(dm3) promoters. For each gene one promoter is taken (from the first transcript).
  	
  	\item \code{PWMGEV.dm3.jaspar.insects} - pre-compiled generalized extreme value (GEV) distribution with location, scale and
  	shape parameters fitted using linear regression on fragments of size 200-2000bp on all unique 2kb Drosophila Melanogaster (dm3) 
  	promoters. 
  }
}

\usage{
data(PWMLogn.dm3.jaspar.insects)
data(PWMCutoff4.dm3.jaspar.insects)
data(PWMCutoff5.dm3.jaspar.insects)
data(PWMGEV.dm3.jaspar.insects)
data(PWMPvalueCutoff1e2.dm3.jaspar.insects)
data(PWMPvalueCutoff1e3.dm3.jaspar.insects)
data(PWMPvalueCutoff1e4.dm3.jaspar.insects)
}

\details{
	For convenience this package contains already pre-compiled set of backgrounds for D. melanogaster. These contain both the parameters
	of background distributions and JASPAR position frequency matrices converted to PWMs using the same background (with a
	pseudo-count of 1 *shared* between the four nucleotides proportional to nucleotide background frequencies). 
	
	All of these objects were created with the appropriate functions available in the \code{PWMEnrich} package (see Section 'See also'). We
	recommend using these functions to generate backgrounds for a custom set of background sequences and/or DNA motifs. 
}

\examples{
	data(PWMLogn.dm3.jaspar.insects)
	
	motifEnrichment(DNAString("TGCATCAAGTGTGTAGTGCGATGAATGC"), PWMLogn.dm3.jaspar.insects)
}
\keyword{datasets}
\seealso{
	 \code{\link{makeBackground}}, \code{\link{makePWMLognBackground}}, \code{\link{makePWMCutoffBackground}}, \code{\link{makePWMEmpiricalBackground}}.
}
