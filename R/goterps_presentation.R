#' Create and Duplicate Project Structure
#'
#' This function creates a new project structure in a specified directory and duplicates all necessary files.
#' @param dest_dir The path where the project structure should be created and files duplicated.
#' @export

# Function to recursively copy files and folders
goterps_presentation <- function(item, dest_dir) {


  zip_file_path <- paste0(dest_dir, ".zip")


  download.file(url = "https://github.com/guadag12/goterps/raw/main/inst/extdata/_extensions/quarto_presentation.zip",
                destfile = zip_file_path)
  if(!dir.exists(dest_dir)) {
    dir.create(dest_dir)
  } else {
    unlink(dest_dir, recursive = TRUE)
    dir.create(dest_dir)
  }

  unzip(zipfile = zip_file_path, exdir = dest_dir)
  unlink(zip_file_path)
}

# Example of how to call the function
# goterps_presentation("C:/Users/User/Documents/GitHub/goterps_presentation")
