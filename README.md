# GettingAndCleaningData
Programming assignment for Week4 of the GettingAndCleaningData Coursera course

## Files contained in the GitHub repo

The GitHub repo contains the following files:

- README.md : this README file
- CodeBook.md : The Code Book for the project
- CodeBook.html : the HTML translation of CodeBook.md
- data_catalog.txt : the column names of the resulting mean_measures.txt file, used for creating the CodeBook.md file
- run_analysis.R : the R language script that contains all reproducable steps from getting the origin data to writing the final result tidy data set into a data file on disk

## Steps to reproduce the analysis

1. Download the origin data file *DataSet.zip* and unzip it's content in a directory named "UCI HAR Dataset" on your disk
2. Open the *run_analysis.R* script in RStudio
3. Run the *run_analysis.R* script
4. Open the resulting data file and check that it contains 180 lines of data

## Output of the analysis

The result produced by the script and saved into the data file named "mean_measures.txt" contains every unique measure and combination of a SUBJECT and an ACTIVITY. The resulting data file is what is called a "tidy data set". Column #1 is the SUBJECT_ID and column #2 contains the ACTIVITY. The other columns [3:81] contain the actual mean of the measures.
