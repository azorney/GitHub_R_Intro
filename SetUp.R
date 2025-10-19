packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# use function to set up environment
packages <- c("tidyverse", 
              "palmerpenguins", 
              "rmarkdown",
              "ggthemes",
              "RColorBrewer",
              "viridis",
              "ggdark",
              "plotly",
              "rstatix",
              "lterdatasampler")

packageLoad(packages)
