
# Arguments for the preview 
args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("One argument must be supplied.", call.=FALSE)
}

# Preview website
if (args[1] == "yes") {
    servr::httw(paste0(getwd(), '/_site'))
}
