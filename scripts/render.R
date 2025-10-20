# Installing babelquarto if not present
if (! "babelquarto" %in% installed.packages() ) {
    install.packages('babelquarto', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))
}

# Arguments for the preview 
args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("One argument must be supplied.", call.=FALSE)
}

if (args[1] == "yes") {
    # Render site
    babelquarto::render_website(getwd())
}
