#' Create and Duplicate Project Structure
#'
#' This function creates a new project structure in a specified directory and duplicates all necessary files.
#' @param path The path where the project structure should be created and files duplicated.
#' @export

# Function to recursively copy files and folders
goterps_presentation <- function(item, dest_path) {
  # This function requires only the destination path; it assumes the item is the source dir

  # Automatically find the path of the 'goterps' package and set the source directory
  source_dir <- system.file("extdata/_extensions", package = "goterps")

  # Ensure the source directory exists
  if (!dir.exists(source_dir)) {
    stop("Source directory does not exist:", source_dir)
  }

  # Create the destination directory if it does not exist
  if (!dir.exists(dest_path)) {
    dir.create(dest_path, recursive = TRUE)
  }

  # List all files and folders in the source directory
  files_folders <- list.files(source_dir, full.names = TRUE)

  # Loop through each item in the source directory
  for (item in files_folders) {
    # Define the destination path for the current item
    current_dest_path <- file.path(dest_path, basename(item))

    # Check if the current item is a directory
    if (dir.exists(item)) {
      # Recursively call the function for the directory
      if (!dir.exists(current_dest_path)) {  # Ensure the directory exists at the destination
        dir.create(current_dest_path, recursive = TRUE)
      }
      goterps_presentation(item, current_dest_path)  # Recursive function call
    } else {
      # Copy the file to the destination
      file.copy(item, current_dest_path)
    }
  }
}

# Example of how to call the function
# goterps_presentation("/path/to/destination")
