# Installing babelquarto if not present
if (! "pak" %in% installed.packages() ) {
    install.packages("pak")
    pak::pak("ropensci-review-tools/babeldown")
}

# Arguments for the preview 
args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("One argument must be supplied.", call.=FALSE)
}

if (! "DEEPL_API_KEY" %in% names(Sys.getenv())){
    stop("DEEPL API KEY not set", call.=FALSE)
}

babeldown::deepl_translate(
  path = args[1],
  out_path = args[2],
  source_lang = "FR",
  target_lang = "EN-GB",
  formality = "default"
)

