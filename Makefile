html:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook", clean = FALSE)'
	cp -fvr _css/style.css _book/css/
	cp -fvr _img/* _book/

build:
	make html
	Rscript -e 'browseURL("_book/index.html")'

pdf:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'

md:
	Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book",clean=FALSE)'

install:
	Rscript -e 'devtools::install_github("rusergroupcoza/website")'

clean:
	Rscript -e "bookdown::clean_book(TRUE)"
	rm -fvr *.log Rplots.pdf _bookdown_files land.sqlite3

cleaner:
	make clean && rm -fvr rsconnect
	rm -frv *.aux *.out  *.toc # Latex output
	rm -fvr *.html # rogue html files
