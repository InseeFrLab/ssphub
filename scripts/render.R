# Installing babelquarto if not present
if (! "babelquarto" %in% installed.packages() ) {
    install.packages('babelquarto', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))
}

# Render site
babelquarto::render_website(getwd())
