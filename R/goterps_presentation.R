#' Create and Duplicate Project Structure
#'
#' This function creates a new project structure in a specified directory and duplicates all necessary files.
#' @param path The path where the project structure should be created and files duplicated.
#' @export

# Function to recursively copy files and folders
goterps_presentation <- function(path) {

  package_path <- find.package("goterps")
  source_dir<- paste0(package_path,"/extdata/_extensions")
  # Create the destination directory if it does not exist
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }

  # List all files and folders in the source directory
  files_folders <- list.files(source_dir, full.names = TRUE)

  # Loop through each item in the source directory
  for (item in files_folders) {
    # Set the destination path for the current item
    dest_path <- file.path(path, basename(item))

    # Check if the item is a directory
    if (dir.exists(item)) {
      # Recursively call the function for the directory
      if (!dir.exists(dest_path)) {  # Ensure the directory exists in the destination
        dir.create(dest_path, recursive = TRUE)
      }
      goterps_presentation(item, dest_path)
    } else {
      # Copy the file to the destination
      file.copy(item, dest_path)
    }
  }
}

#goterps_presentation("~/GitHub/goterps/inst/extdata/_extensions", "~/GitHub/test")
