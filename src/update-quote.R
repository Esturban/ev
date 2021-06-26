require(jsonlite)

#Load the config file
config_file<-readLines("config.toml",encoding = "UTF-8")
#Find the location of the footer file
footer_loc<-grepl("footerText",config_file)
#Clean up the footer text
footert<-unlist(strsplit(config_file[footer_loc],"="))

#Grab all quotes
quotes<-jsonlite::fromJSON("data/quotes.json")
#Get new quotes
new_quote<-sample(quotes,1)
# update footer
new_footer<-paste0(footert[1]," = \"",new_quote,"\\\n Last Build: ",format(Sys.time(),"%A %B %d, %Y at %I:%M %p (Eastern Time)",tz = "EST"),"\"")
#Add footer to config file
config_file[footer_loc]<-new_footer
#Save the config file
writeLines(config_file,con = "config.toml",useBytes = T)
