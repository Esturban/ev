---
title: 'Getting Started with APIs'
date: "2021-02-15"
draft: no
summaryOn: true
summary: 'The engine powering most applications you use'
tags: 
- apis
- development
- how-to   
- R  
---
  
# What is an API?  

API is an acronym for Application Programming Interface which basically allow you to interact with procedures and functions for applications to access data and features of other applications or services.  APIs are a convenient way of accessing specific types of information or services to provide information warehoused somewhere else, just like this widget below for AAPL stock:  
  
{{< tradingview symbol = "AAPL" >}}  

These APIs are used to relieve stress on resources for servers like the one where this website is hosted to provide a faster experience.  

# Requiremnts  

To be able to access APIs, you need to find a language that can handle HTTP or [cURL](https://dev.to/ibmdeveloper/what-is-curl-and-why-is-it-all-over-api-docs-9mh) requests to send and collect information. My choice of development language is R due to it's flexibility and interactive nature. In case you're familiar with R, this will make sense to you! If you're wondering why I keep making a sentence fragment with the letter R, then [check out this resource page from RStudio](https://support.rstudio.com/hc/en-us/articles/201141096-Getting-Started-with-R).  There are a ton of other languages you can use to follow along, but in that case you're probably familiar with APIs. 

[This page will allow you to convert cURL into most of the languages of your choice](https://curl.trillworks.com/).  

# Selecting an API      

So there are a ton of APIs you can access online where some are free and others you pay premiums for based on useage or standard subscriptions. Since there are so many options, I decided one that might be useful to see in practice is [NewsAPI](https://newsapi.org/) with the intention of solving one problem: **Getting specific information about a topic happening**. NewsAPI is a great starting point to see just what type of information you can download using HTTP requests up to 100 times per day for free.  

So you register your e-mail address, log in and receive the **API key**.  The API is a vital code necessary to access information online from this source to authenticate you as the user.   

If this API source doesn't interest you, check out this list of [free APIs and resources for development](https://free-for.dev/#/?id=apis-data-and-ml).  I encourage free sources as much as possible to avoid too much of a validation and registration process as some sites can create barriers to avoid bots or developers abusing certain resources on their service.  

# Getting Information about what is happening  

These API host services will often share examples with you such as how to access the information to answer premade questions.  In NewsAPI, they provide you with some examples on how to search [specific topics](https://newsapi.org/docs/get-started#search) as well as [general information important to today](https://newsapi.org/docs/get-started#top-headlines).  

> I've decided that knowing what is happening in the world of [mukbang](https://www.thrillist.com/eat/nation/what-is-mukbang) is important so that I know what news is relevant in the world of mukbang in 2021.    


{{< figure src = "https://media.giphy.com/media/yG2G6maCihMsw/source.gif" width = "50%" >}}  

So I first look at the documentation to see what available functions, also known as endpoints, which [can be found here](https://newsapi.org/docs/endpoints).  It appears that */v2/everything* as an endpoint should be able to help me accomplish the above. Great, so I look at the example they provided in the documentation to see how the request is formed.  
This request shows me the most recent **Tesla** information in the **last month** showing the most **recent publications first**.  The points in **bold** are the parameters of the *[/v2/everything](https://newsapi.org/docs/endpoints/everything)* endpoint

```{http}
GET https://newsapi.org/v2/everything?q=tesla&from=2021-03-12&sortBy=publishedAt&apiKey=_API_KEY_HERE_
```  

For solving my use case, I would change the q parameter to be 'mukbang' and use my programming environment (R) to load the information.  

```{r}
#Dependency
require(jsonlite)

#Query to API
q<-"https://newsapi.org/v2/everything?q=mukbang&from=2021-03-12&sortBy=publishedAt&apiKey=_API_KEY_HERE_"

#Load the data
results<-jsonlite::fromJSON(q)

#How many articles have been written in that time?  
results$totalResults

#See the articles table
results$articles%>%tbl_df()

# A tibble: 20 x 8
#    source$id $name  author  title  description url   
#    <chr>     <chr>  <chr>   <chr>  <chr>       <chr> 
#  1 NA        Fluen~ Caitli~ “Cute~ "If you’re~ https~
#  2 NA        Indep~ Helen ~ Chine~ "China's c~ https~
#  3 NA        CNA    CNA     China~ "SHANGHAI:~ https~
#  4 reuters   Reute~ Reuter~ China~ "China's c~ https~
#  5 NA        Inqui~ postie  Ivana~ "BAKIT nga~ https~
#  6 NA        Drama~ LollyP~ Mouse~ "Memories ~ https~
#  7 NA        Yahoo~ Ryan G~ Japan~ "Recent fi~ https~
#  8 NA        The B~ Devra ~ Maste~ "An entrep~ https~
#  9 NA        Elite~ Kelly ~ The T~ "It seems ~ https~
# 10 NA        Creat~ Aimée ~ Qianh~ "The anima~ https~
# 11 NA        Wykop~ artem17 Zarab~ "tl;dw\r\n~ https~
# 12 NA        Apple~ batbay~ Show ~ "Watch yo~  https~
# 13 NA        Ilpos~ Ariann~ Le do~ "Qui il mu~ https~
# 14 NA        The J~ NA      Young~ "From a co~ https~
# 15 NA        NDTV ~ NA      Young~ "From a co~ https~
# 16 NA        CNA    CNA     Young~ "From a co~ https~
# 17 NA        Bangk~ Bangko~ Young~ "SEOUL: Fr~ https~
# 18 NA        The S~ The St~ Insid~ "Some of t~ https~
# 19 NA        FRANC~ FRANCE~ Young~ "From a co~ https~
# 20 NA        Drama~ selena  Mouse~ "The clock~ https~
# ... with 3 more variables: urlToImage <chr>,
#   publishedAt <chr>, content <chr>
```   

Another reason I use R is because it immediately tabularizes the information for me nicely to be able to analyze the information right away using Natural Language Processing or simply flag days of news releases.

# Practice  

This is a fairly trivial example, but one that walks through a few components that are consistent in API usage:  
1. Registration - some services need to know who you are and what you're requesting  
2. API Keys - using a single parameter for a unique identifier  
3. Parameters - configuring parameters in an endpoint for your use case   

However, there is much more that can happen in APIs such as validating the reegistration where you may have to submit your intended use, domain, etc.  APIs range from more complex to far simpler utility, but this starting point should give you a general idea on how to remain informed about accessing application procedures.  




