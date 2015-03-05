data_wrangle2 <- sigdf %>% group_by(State) %>% summarise(Total.Graduates = mean(Total.Graduates), Average.Income = mean(Average.Income)) %>% subset(!State == "null")
  
ggplot(data_wrangle2, aes(x=Total.Graduates, y=Average.Income)) + geom_point(aes(colour=State)) + guides(col=guide_legend(nrow=20))
