# Packages to install
load.lib < -c("caret", "dplyr", "forcats", "ggplot2", "gridExtra", "lubridate",
"purrr", "readxl", "stringr", "tidyr", "XLConnect", "xlsReadWrite")

# Subset only non-installed packages:
install.lib <- load.lib[!load.lib %in% installed.packages()]

# Installing subset of non-installed packages using a loop:
for(lib in install.lib) {
install.packages(lib,dependencies=TRUE)
}

# Requiere function
sapply(load.lib, require, character=TRUE)
