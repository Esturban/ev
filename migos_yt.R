require(tuber)
install.packages('tuber',dependencies = T)
yt_oauth("343738212445-70cogob2g1fjqthl5ik79pha545sipf4.apps.googleusercontent.com", "WYYrmz2k4BKNjLG7iixeRZSE")

res<- yt_search("Migos")

head(res)
length(unique(res$video_id))
require(dplyr)
require(magrittr)
require(purrr)
# install.packages('parsedate',dependencies = T)
require(parsedate)


as.character(res$video_id[1])%>%get_video_details(video_id = .)->siamese_cat

options(scipen = 20)

all_migos <-
  as.character(res$video_id) %>% lapply(., function(x)
    x %>% get_stats(video_id = .) %>% data.frame(stringsAsFactors = F))


then_out<- all_migos%>%
  purrr::compact(.)%>%
  bind_rows(.)

res%>%
  filter(channelTitle =="MigosVEVO")%>%
  inner_join(then_out,by = c('video_id' = 'id'))->migos_vevo

migos_vevo<-data.frame(lapply(migos_vevo,as.character),stringsAsFactors = F)

migos_vevo%<>%
  mutate(viewCount = as.numeric(viewCount),
         likeCount = as.numeric(likeCount),
         dislikeCount = as.numeric(dislikeCount),
         commentCount = as.numeric(commentCount),
         publishedAt = parse_iso_8601(publishedAt),
         daysSince = as.numeric(difftime(Sys.Date(),publishedAt,units = 'days')),
         uniformDailyViewers = viewCount/daysSince,
         views = viewCount,
         viewCount = paste0(round(viewCount/1000000,0),"M"),
         likeCount = paste0(round(likeCount/1000,0),"K"),
         dislikeCount = paste0(round(dislikeCount/1000,0),"K"),
         commentCount = paste0(round(commentCount/1000,0),"K"),
         
         )

migos_vevo%>%
  arrange(desc(views))%>%
  mutate(title = paste0("[",title,"](https://www.youtube.com/watch?v=",video_id,")"))%>%
  # filter(grepl("Audio",title))%>%
  select(title,publishedAt,viewCount,likeCount,dislikeCount,commentCount)%>%knitr::kable(format = "markdown")
