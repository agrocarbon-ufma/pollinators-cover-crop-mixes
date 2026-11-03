%%R
pkgs <- c("readxl", "dplyr", "tidyr", "stringr", "ggplot2", "patchwork", "scales", "glmmTMB",
          "emmeans", "multcomp", "multcompView", "car", "performance", "DHARMa", "vegan",
          "indicspecies", "iNEXT", "bipartite", "png", "MASS", "lmtest", "sandwich")
pkgs <- pkgs[pkgs %in% rownames(installed.packages())]
versions <- data.frame(package = pkgs,
                       version = vapply(pkgs, function(p) as.character(packageVersion(p)), ""),
                       row.names = NULL)
dir.create("out", showWarnings = FALSE)
write.csv(versions, "out/package_versions.csv", row.names = FALSE)
writeLines(capture.output(sessionInfo()), "out/sessionInfo.txt")
cat(R.version.string, "\n")
print(versions, row.names = FALSE)
