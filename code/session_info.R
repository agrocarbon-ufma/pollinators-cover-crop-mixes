# Records the R and package versions used in the analysis.
# Run in a final %%R cell of Analise_polinizadores_AGEE_v2.ipynb, after all other cells.
pkgs <- c("readxl", "dplyr", "tidyr", "stringr", "ggplot2", "patchwork", "scales", "glmmTMB",
          "emmeans", "multcomp", "multcompView", "car", "performance", "DHARMa", "vegan",
          "indicspecies", "iNEXT", "bipartite", "png", "MASS", "lmtest", "sandwich")
pkgs <- pkgs[pkgs %in% rownames(installed.packages())]
versions <- data.frame(
  package  = pkgs,
  version  = vapply(pkgs, function(p) as.character(packageVersion(p)), ""),
  citation = vapply(pkgs, function(p) paste(format(citation(p)[[1]], style = "text"), collapse = " "), ""),
  row.names = NULL
)
dir.create("out", showWarnings = FALSE)
write.csv(versions, "out/package_versions.csv", row.names = FALSE)
writeLines(capture.output(sessionInfo()), "out/sessionInfo.txt")
cat(R.version.string, "\n")
print(versions[, c("package", "version")], row.names = FALSE)
