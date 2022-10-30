require(jsonlite)

#Load the config file
config_file<-readLines("config.toml",encoding = "UTF-8")
#Find the location of the footer file
footer_loc<-grepl("footerText",config_file)
build_loc<-grepl("buildText",config_file)
#Clean up the footer text
footert<-unlist(strsplit(config_file[footer_loc],"="))
buildt<-unlist(strsplit(config_file[build_loc],"="))

#Grab all quotes
quotes<-jsonlite::fromJSON("data/quotes.json")
#Get new quotes
new_quote<-sample(quotes,1)
# update footer
new_footer<-paste0(footert[1],"=\"",new_quote,"\"")
new_build<-paste0(buildt[1],"=\"","Last Build: ",format(Sys.time(),"%A %B %d, %Y at %I:%M %p (Eastern Time)",tz = "America/New_York"),"\"")
#Add footer to config file
config_file[footer_loc]<-new_footer
config_file[build_loc]<-new_build
#Save the config file
writeLines(config_file,con = "config.toml",useBytes = T)
