# Packages to install
want.packages <- c("caret", "dplyr", "forcats", "ggplot2", "gridExtra", "lubridate",
"purrr", "readxl", "stringr", "tidyr", "writexl", "xlsx")

# Subset of non-installed packages:
install.lib <- want.packages[!want.packages %in% installed.packages()[,"Package"]]

# Installing subset of non-installed packages using a loop:
for(lib in install.lib) {
install.packages(lib,dependencies=TRUE)
}

# Requiere function (load all wanted packages)
sapply(load.lib, require, character=TRUE)
