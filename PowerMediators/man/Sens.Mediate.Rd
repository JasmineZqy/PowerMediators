% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sens_med.R
\name{Sens.Mediate}
\alias{Sens.Mediate}
\title{Sensitivity analysis for causal mediation analysis}
\usage{
Sens.Mediate(
  data,
  treatment,
  outcome,
  mediators,
  covariates,
  cluster_id = NA_character_,
  learners_outcome = c("glm"),
  cf.y = 0.13,
  cf.m = 0.13,
  benchmark_covariates = NULL,
  control = estimate_control()
)
}
\arguments{
\item{data}{A \code{data.frame} containing all analysis variables.}

\item{treatment}{The column name of the treatment variable. Currently supports binary treatment.}

\item{outcome}{The column name of the outcome variable.}

\item{mediators}{A character vector containing the column names of the mediator variables.}

\item{covariates}{A character vector containing the column names of pretreatment covariates.}

\item{cluster_id}{(optional) The column name of the identifier for each cluster}

\item{learners_outcome}{A character vector of \code{mlr3superlearner} methods for estimating the regressions following R. Liu et al. (2024) "General targeted machine learning for modern causal  mediation analysis" and the accompanying R package \code{crumble}.}

\item{cf.y}{(optional) A \code{numeric} vector of the partial R-squared sensitivity parameters for the regressions, that is, R^2_\{Y-theta_\{2,s\} ~ theta_2 -theta_\{2,s\} \} and R^2_\{bM-theta_\{1,s\} ~ theta_\{1,u,s\} -theta_\{1,s\} \}.}

\item{cf.m}{(optional) A \code{numeric} vector of the partial R-squared sensitivity parameters for the weights (or, Riesz representers), that is, 1-R^2_\{alpha_2 ~ alpha_\{2,s\}\} and 1-R^2_\{alpha_1 ~ alpha_\{1,s\}\}.}

\item{benchmark_covariates}{(optional) A character vector containing the column names of pretreatment covariates to be used as benchmarks for the strengths of the unmeasured confounders.}

\item{control}{(optional) A list of control parameters specified via \code{estimate_control()}. The default setting is based on R package \code{crumble}.}
}
\description{
Implements a sensitivity analysis method for unmeasured pretreatment confounders in assessing causal mediation effects based on the debiased machine learning approach.
}
