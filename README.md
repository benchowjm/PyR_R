## PyR Repository of R Resources

This repository is a compilation of files & resources to help those of you new to R/RStudio to get acquainted with the program as fast as possible. __If you're here for the first time__ go to the section titled 'Do you Git it???' at the bottom of this README.

### Learning R On Your Own ###
1. Go through the file __"00\_Installing_R.Rmd"__. Topics:
    + Installing R & R Studio
    + Manual installation of packages
    + Brief introduction to R
    + Reference: Chapters 1-3 of [this summary](https://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf)
2. Do one of the online courses ([this](http://tryr.codeschool.com/) is a good starting place). Topics:
    + R Syntax
    + Vectors, Matrics, Factors, Data Frames
    + Summary Statistics and Linear Models
3. Get acquainted with the list of functions in __"01\_Functions.Rmd"__
4. Have a look at some examples of using these functions in __"02\_Basic_Illustration.Rmd"__


### External Resources ###

#### Intro ####
- Official [full-blown intro](https://cran.r-project.org/doc/manuals/R-intro.pdf) to R
- Many more introductory resources like [this article](http://www.computerworld.com/article/2497143/business-intelligence/business-intelligence-beginner-s-guide-to-r-introduction.html)
- Packages: The full [index](http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html) or a [nifty search tool](http://crantastic.org/)

#### Online courses ####
- CodeSchool's [gentle introduction](http://tryr.codeschool.com/)
- Datacamp's [equally gentle introduction](https://www.datacamp.com/courses/free-introduction-to-r)
- Lynda.com's [introductory course](http://www.lynda.com/R-tutorials/R-Statistics-Essential-Training/142447-2.html?srchtrk=index:1%0Alinktypeid:2%0Aq:bart%2Bpoulson%0Apage:1%0As:relevance%0Asa:true%0Aproducttypeid:2) on statistical manipulation
- JHU's [Data Science Specialization](https://www.coursera.org/course/datascitoolbox), spanning 9 courses (there are 8 more after this one)

#### Self-Exploration ####
- Don't have your own data? Use R's [in-built datasets](http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html)
- R's [Index of Colors](http://research.stowers-institute.org/efg/R/Color/Chart/)

#### ggplot2 ####
- Index of [ggplot2 functions](http://docs.ggplot2.org/current/)
- RStudio's [ggplot2 cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)
- R Cookbook quick ["How-To"](http://www.cookbook-r.com/Graphs/) for producing graphs quickly
- U-Texas' [guide](http://www.cs.utexas.edu/~cannata/dataVis/Class%20Notes/Beautiful%20plotting%20in%20R_%20A%20ggplot2%20cheatsheet%20_%20Technical%20Tidbits%20From%20Spatial%20Analysis%20&%20Data%20Science.pdf) to producing CUDG-worthy visualizations
- [Wordpress article](https://tgmstat.wordpress.com/2013/11/13/plot-matrix-with-the-r-package-ggally/): What is GGally?

#### R Markdown ####
- [RStudio's](http://rmarkdown.rstudio.com/) R Markdown introduction
- [RStudio's](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) R Markdown cheatsheet


### Do you Git it??? ###
This section briefly explains how this repository works. There are two 'branches', the __master__ and __cloneable__ branches. You can switch from one to the other by toggling the "Branch:" drop-down menu in the top left.

   |__master__ branch | __cloneable__ branch
---|------------------|---------------------
Purpose|Using the site remotely | Cloning the repository to your computer
Online Display| Rmd files are presentable on github | Rmd files, if viewed on github, have peculiarities
Content| Some omitted due to inability to produce R output | Full content 
How to use| Copy and paste the code chunks into your R Studio UI | Open the html files directly after cloning the repo

To clone:

    - Open your command line / Terminal program
    - Navigate to a directory of your choice (cd Documents/R/...)
    - Initialize a git repository (git init)
    - Clone the repository (git clone https://github.com/benchowjm/PyR_R PyR_R)

__Note__: If you want the best of both worlds but don't have git / can't clone this repository: 

    - Go to the __cloneable__ branch
    - Open the corresponding .html files
    - Copy all the text & paste it into a fresh text file and save it as a .html
    - Open your newly saved file in your browser
