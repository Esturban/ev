---
title: 'A little more fun with web apps'
date: "2021-02-18"
draft: no
summaryOn: true
summary: "Taylor Swift, Kanye's better half  :heart:"
tags: 
- apps
- development
- fun   
- R
- artist
---
  
# Web app fun  

Similar to the [last post about web apps](/collection/webapps-i), i've found another similar source of data from [taylor.rest](https://taylor.rest/) which includes a source for the images. Although I couldn't get the images to render in the web app because of imgur's limitations in render within a web app without an API key, I decided to take a different bootstrapping approach.  

# Web Scraping  

So the images didn't work out but no need to fret because I can rip off a similar approach used in the Kanye West I didn't bring much attention to and that was how the images in the app were sourced from Getty Images. [Here is the original script](https://github.com/Esturban/ye/blob/master/src/4_imgs.R) which works as follows:     
  
You first go to the url (`read_html`), you then select the specific item class using a css selector (`html_nodes`) and you then grab the source of the item (`html('src')`), which in this case is the image link.   

In the context of Taylor Swift, the code might look something like:  
```r  
#Loading the Taylor images from getty images
'https://www.gettyimages.com/photos/taylor-swift?family=editorial&phrase=taylor%20swift&sort=mostpopular' %>%
  read_html %>%
  html_nodes(
    'body > div.content_wrapper > section > div > main > section > div.search-content__gallery-pager-wrapper > div > div.search-content__gallery > div > div > div.search-content__gallery-assets > div > article > a > figure > img'
  ) %>%
  html_attr('src') -> ts_imgs
```  

On github, you can [final committed changes here of Taylor's images.](https://github.com/Esturban/tswift/blob/master/src/4_imgs.R)   

# Tay's Wisdom   

The best part, because of using github for hosting code is to leverage information as a way to save time in development. Here is the Taylor Swift github repo if you'd like to check it out.  If you're new to development, I recommend checking out bot the [Taylor Swift repository](https://github.com/Esturban/tswift) and the [Kanye West repository](https://github.com/Esturban/ye).   
  
 
|{{< figure src = "/collection/webapps-ii/tay-i.jpeg" width = "250px" >}}|{{< figure src = "/collection/webapps-ii/tay-ii.jpeg" width = "250px" >}}|{{< figure src = "/collection/webapps-ii/tay-iii.jpeg" width = "250px" >}}| {{< figure src = "/collection/webapps-ii/tay-iv.jpeg" width = "250px" >}}|   
|:-----:|:-----:|:-----:|:-----:|  
    
  
The function and simplicity of the application is designed for fun and nothing more.  It takes a real world application of accessing website services and giving them front-end utility.   

# Curious about the code?  

Check out my github where I have the [code posted for deploying and developing the application locally](https://github.com/Esturban/tswift). Create issues, forks or pull requests letting me know what you think or how you might want to improve the end result again !  
