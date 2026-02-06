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

input_path = paste0("../project/", args[1], "/index.qmd")  # sth like directory/sub
out_path = paste0("../project/",args[1], "/index.en.qmd")

babeldown::deepl_translate(
  path = input_path,
  out_path = out_path,
  source_lang = "FR",
  target_lang = "EN-GB",
  formality = "default",
  yaml_fields = c("title", "description", "categories")
)

replace_in_qmd <- function(input_file) {
  # Read the input file
  content <- readLines(input_file)

  # Replace multiple spaces with empty string
  content <- gsub("\\s{5,}", "", content)

  # Replace too many "-"s with as many necessary to fill the first line
  content <- gsub("-{77,}", "-------------------------------------------------------------------------", content)

  # Replace "|  | ----"
  content <- gsub("\\|\\s{2}\\|\\s---", "|---|---", content)

  # Replace "\" with "", for ex for "\-" and  "{{\< fa brands"
  content <- gsub("\\\\", "", content)

  # Replace "description: |-" or "description: | -" with "description: |"
  content <- gsub("description:\\s\\|-|description:\\s\\|\\s-", "description: |", content)

  # Write the modified content to the output file
  writeLines(content, input_file)

}

replace_in_qmd(out_path)

# NO WORK - TO DO LATER
# # Glossary
# filename <- "glossary-fr-en.csv"

# # create (or update) glossary
# babeldown::deepl_upsert_glossary(
#   filename,
#   target_lang = "en",
#   source_lang = "fr"
# )
