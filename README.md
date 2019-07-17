# Slides as PDF

Besides you can build the PDF and html files from `slides-awk.md` file, here is also the build PDF: https://github.com/mschmnet/awk-slides/raw/master/pdf/awk-slides.pdf

# Content of the slides

1. What is AWK for?
2. Basics. After this section you will be able to process a temperature CSV file.
3. More advanced features
    1. Arrays
    2. Functions
    3. Environment variables
    4. External commands
    5. Import libraries
    6. Ranges

# How to generate pdf and html files

## Requirements

* `npm`
* `make` (if you don't have `make` just have a look at the Makefile to find out how you can generate the slides)

## PDF / HTML generation

### Generate both html and pdf

    make [all]

### Generate pdf

    make pdf 

### Generate html

    make html

### List targets

    make help 




