---
title: 'High Performance Websites'
author: E
date: "2020-11-14"
summaryOn: true
summary: "[Google](https://developers.google.com/web/updates/2018/07/search-ads-speed), the mandatory friend you want to get along with online :smiling_imp:"
categories: []
tags:
  - development
  - best-practices
  - html
showDate: no
draft: no  
---
  
# Google, the internet overlord  

*"Google it!"*  

*"Check Google"*  

*"Have you Google'd it?"*  

Common phrases we hear as we go through the process of learning, confirming, and disproving.    

Google has a beautiful monopoly on search that has not been questioned in the two decades it's been in the search engine game.  For reference, sources state that [Google could have more than 90% of the market share of search](https://gs.statcounter.com/search-engine-market-share) while others struggle to get enough traffic to keep the lights on like DuckDuckGo.  

My preferred search engines?  
[Startpage (Like Google, but with respect for your privacy)](startpage.pl) or [Ecosia (They'll plant a tree for your search!)](ecosia.org)   
  
More important than which search engine you want to use is the one you want to rank highly on. Since Google has a number of factors encompassed in their [Search Engine Results Page (SERP)](https://www.google.com/search/howsearchworks/algorithms/), you want to be on the good side of SERP to make sure your content appears.  

# Find your problems    
  

Google will always evaluate your page according to five different factors:  
- Meaning of your query - So what information are you looking for?  
- Relevance of webpages - Do the pages in the search provide info relevant to what you are looking for?  
- Quality of content - Is your page a reliable source for what the search is looking for?  
- Usability of webpages - From the pain points on your website, can users find the information they need quickly?  
- Context and settings - Is your site useful and relevant at that moment?  

Although these may appear obscure, there are ways to evaluate these piece objectively by leveraging existing tools that will provide you with insights with the problems with your website. Here are a few of the pages I use to evaluate any websites' performance in general:  
- [GTmetrix](https://gtmetrix.com/) - A page loading performance analysis (free of charge) that observes where issues exist on your web page  
- [Lighthouse](https://developers.google.com/web/tools/lighthouse) - A tool provided by google to evaluate the quality of web pages by highlighting issues that may exist  
- [Checkbot.io](https://www.checkbot.io/) - A site evaluating the issues that may exist on your page  

These tools will always provide insight to ex

# What you can do  


These issues are not without resolve as there are a number of things you can do for your website to improve the performance.  Here are a few "quick fixes" that might be applicable to your website:  

- **Serve optimized images** - Test out the different layouts your website would likely be used on; Desktop, Mobile, Tablet. See what the maximum size needed for your resources might be since Google is not a fan of oversized or undersized images served as resources.  
- Remove render-blocking resources - Does your site depend on Javascript, CSS or other plugins up front? **Consider moving them to the end of your website if they are not essential for the functionality of your website**  
  
- **Minify resources** - Sometimes tabs, spaces and new line blocks can expand the size of your CSS or JS. Use a service to minify your code in advance of uploading.  For wordpress sites, there are plugins that can help you accomplish this or similar services online such as [Javascript Minifier](https://javascript-minifier.com/) or [Website Planet](https://us-browse.startpage.com/av/proxy?ep=4e465950513056655556414345774e64475359466456595055526443487842664e556f474c47735252687751556b3146435663664852745247694a436267345443774264415242654d6868524344704d6277635541464630426b59504278785a4179424b5a674943563059414b684d5a4541354143334d534e466851526c51415756514e51565a52573374414f566747526c414b44564550466c6744576e78434d6b3054566c352f4f4777624f68566c5877425a54566b6f5a4559424b4242664d456c48476e4e425a5168564567454c57465a6445676b4658436f57595673474856465456415a5651516f4e556e6c424f55305454515a6643516769477746525444355163315a57&ek=5632746r4n574q796244567364473830616o346n&ekdata=bc8b7559991b4c95b4898b5c30e667e2).    
  
- **Add expiry headers** - Create a .htaccess file that defines the rules set for the configuration on your website's server.  I found [this](https://stackoverflow.com/questions/13972629/add-expires-headers) to be a helpful starting point for a general website, but it change it as you deem fit for your website and purposes. These are basically instructions to visiting computers on how long to cache an asset on the visitors' machine before trying to redownload the item from the website.  
  
- **Sitemap** - Just make sure you have a sitemap on your website. This tends to be an out of the box feature for most websites, but in the event it's missing from yours, you are going to have a difficult time being found in organic search with Google or others.  
  

# Test, test, test  

This is a given, but leveraging the assets in the previous section for testing such as Lighthouse and GT Metrix can do a lot of your heavy lifting when identifying existing issues. My workflow works as follows:  
- Publish a new page  
- Run lighthouse or GT Metrix  
- Determine what issues exist, if any  
- Prioritize the issues with the largest impact on overall time  
- Search online for the answers to the issue, relying mostly on stackoverflow; Here's an example search: ["Avoid chaining critical requests stackoverflow"](https://www.startpage.com/do/dsearch?query=Avoid+chaining+critical+requests+stackoverflow&cat=web&pl=ext-ff&language=english&extVersion=1.3.0)  

This is an iterative process that will vary by what setup you might have in website design and deployment. However, these are *crucial* steps in ensuring your website is not hurt by the internet overlords.  [#techtyranny](https://twitter.com/hashtag/techtyranny)  

