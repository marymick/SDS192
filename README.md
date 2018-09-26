# SDS 192

[R Markdown Websites](https://rmarkdown.rstudio.com/rmarkdown_websites.htm)
source code to generate the course webpage for 2018-09 Fall Smith College SDS
192: Introduction to Data Science <https://rudeboybert.github.io/SDS192/>. Most
of the content is in either:

* `index.Rmd`: A single Moodle-style page that lists all announcements, lectures notes, and problem sets/homeworks in reverse-chronological order.
* `projects.Rmd`: Details on the 3 mini-projects and term project for this course
* `syllabus.Rmd`: Course info/description, topics, materials, evaluation, and expectations.


## How to build this webpage

This webpage is built/compiled using [R Markdown
Websites](https://rmarkdown.rstudio.com/rmarkdown_websites.htm). To compile this
webpage for yourself, do the following:

1. Get the contents of this directory/repository:
    + If you are not familiar with GitHub, click the green "Clone or download" button on the top-right -> Download ZIP -> Unzip `SDS192-master.zip`.
    + If you are familiar with GitHub, clone this repository.
1. Double-click the `SDS192.Rproj` to open RStudio.
1. If you haven't already, install the R Markdown package by typing `install.packages("rmarkdown")` in the console.
1. Go to the "Build" pane of RStudio -> More -> Configure Build Tools... -> Ensure that "Project build tools" is set to "Webpage".
1. Click "Build Website". You may need to install some additional R pacakges listed at the top of `index.Rmd`.
1. The website will display in the Viewer pane. The resulting `index.html` file and all other files for the webpage will be saved in the `docs/` folder.


## How to publish this webpage

To publish/deploy this webpage and make it viewable on the web, you need to either:

1. Copy the contents of the `docs/` folder to your personal webpage or whatever
domain hosting service you use.
1. Use [GitHub pages](https://pages.github.com/) as I do. RStudio's R Markdown Websites page gives [instructions](http://rmarkdown.rstudio.com/rmarkdown_websites.html#publishing_websites) on how.
