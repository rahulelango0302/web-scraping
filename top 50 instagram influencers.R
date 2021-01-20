#Top 50 instagram influencer in India

library(rvest)
library(robotstxt)
library(dplyr)
paths_allowed("https://hypeauditor.com/top-instagram-all-india/")
link<-"https://hypeauditor.com/top-instagram-all-india"
web<-read_html(link)

Insta_id<-web%>%html_nodes(".contributor__name-content")%>%html_text()
Name_or_user_name<-web%>%html_nodes(".contributor__title")%>%html_text()
Category<-web%>%html_nodes(".topic:nth-child(1) .tag__content")%>%html_text()
Followers<-web%>%html_nodes(".td:nth-child(5)")%>%html_text()
Influencers<-data.frame(Name_or_user_name,Insta_id,Category,Followers)
View(Influencers)