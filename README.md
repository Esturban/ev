### [estebanvalencia.com](https://estebanvalencia.com)

> Oh hey!  
  
### How does my website work?  

[estebanvalencia.com](https://estebanvalencia.com) is a website using the static site generator called [Hugo](https://goghugo.io).  For more information about Hugo, see their [Quick Start page](https://gohugo.io/getting-started/quick-start/)  

Hugo uses the themes folder to identify which theme to use in the build process for showcasing the "content" in the selected theme.  In this repository, both submodules themes/ev-console and content are private files maintained separately for separating workflow between content creation, theme appearance and site composition.  

#### Actions  

There are a couple of github actions used to maintain the website "fresh" by:  
- Automatically creating a pull request to `master` from `dev` when new pushes are made
- Daily, update the config.toml quotation from the data object using R and push to `dev`  

###

![](https://media.giphy.com/media/9Pk8DGoB7XPbNGkOdl/giphy.gif "Remember: all I'm offering is the truth. Nothing more.")  


![stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)

#### Repository Statistics   

A quick FYI about the contents of the repository.  

![GitHub repo file count](https://img.shields.io/github/directory-file-count/Esturban/ev?style=plastic)  
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/Esturban/ev?style=plastic)   
![github languages](https://img.shields.io/github/languages/count/Esturban/ev?style=plastic)  
![top language](https://img.shields.io/github/languages/top/Esturban/ev?style=plastic)  

#### Netlify Checks  

Check if the website successfully builds in the `staging` and `production` DNS.  

Staging: [![Netlify Status](https://api.netlify.com/api/v1/badges/a089032c-3282-4cfe-8519-d9b855cd920a/deploy-status)](https://app.netlify.com/sites/confident-blackwell-ccd7ff/deploys)  

Production: [![Netlify Status](https://api.netlify.com/api/v1/badges/e302d87a-9b14-4cd8-a906-8db0672f34a5/deploy-status)](https://app.netlify.com/sites/nervous-agnesi-1dc4ef/deploys)  
