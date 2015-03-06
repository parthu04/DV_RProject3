data_wrangle2 <- sigdf %>% group_by(State) %>% summarise(Total.Graduates = mean(Total.Graduates), Average.Income = mean(Average.Income)) %>% subset(!State == "null")

ggplot(data_wrangle2, aes(x=Total.Graduates, y=Average.Income)) + geom_point(aes(colour=State)) + guides(col=guide_legend(nrow=20)) + ggtitle('Total Graduates and the Average Income of States') + theme(plot.title=element_text(size=20, face="bold", vjust=2)) + labs(x="Total Graduates", y=paste("Average", "Income")) 
