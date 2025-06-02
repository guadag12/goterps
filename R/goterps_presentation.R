#' Create and Duplicate Project Structure
#'
#' This function creates a new project structure in a specified directory and duplicates all necessary files.
#' @param item Not currently used.
#' @param dest_dir The path where the project structure should be created and files duplicated.
#' @importFrom utils download.file unzip
#' @export

# Function to recursively copy files and folders
goterps_presentation <- function(item, dest_dir) {
  zip_file_path <- paste0(dest_dir, ".zip")

  # Download the zip file
  download.file(
    url = "https://github.com/guadag12/goterps/raw/main/inst/extdata/_extensions/quarto_presentation.zip",
    destfile = zip_file_path
  )

  # Create destination directory if it doesn't exist
  if (!dir.exists(dest_dir)) {
    dir.create(dest_dir, recursive = TRUE)
  }

  # Unzip content into existing folder, overwriting only files with same name
  unzip(zipfile = zip_file_path, exdir = dest_dir, overwrite = TRUE)

  # Clean up zip file
  unlink(zip_file_path)
}


#' @examples
# Example of how to call the function
# goterps_presentation("C:/Users/User/Documents/GitHub/goterps_presentation")
