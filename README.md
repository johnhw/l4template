# l4template
UofG SoCS Level 4 Project LaTeX template

## Notes on formatting

The first page, abstract and table of contents are numbered using Roman numerals and are not
included in the page count. 

The first Chapter should start on page 1. You are allowed 40 pages for a 40 credit project and 20 pages for a 
20 credit report. This includes everything numbered in Arabic numerals (excluding front matter) up
to but excluding the appendices and bibliography.

**You must not alter text size (it is currently 10pt) or alter margins or spacing.**

Note that in this example, and some of the others, you need to execute the following commands the first time you process the files.
Multiple calls to pdflatex are required to resolve references to labels and citations. The file l4proj.bib is the bibliography file.



    pdflatex l4proj
    bibtex l4proj
    pdflatex l4proj
    pdflatex l4proj

 