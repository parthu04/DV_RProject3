data_wrangle3 <- ddf %>% group_by(STATE) %>% summarise(COMPUTERS.MATH.AND.STATS = mean(COMPUTERS.MATH.AND.STATS), BIOLOGY.AND.AGRICULTURE = mean(BIOLOGY.AND.AGRICULTURE), PHYSICS = mean(PHYSICS), PSYCHOLOGY = mean(PSYCHOLOGY), SOCIOLOGY = mean(SOCIOLOGY), ENGINEERING = mean(ENGINEERING), MULTIDISCIPLINARY.STUDIES = mean(MULTIDISCIPLINARY.STUDIES), SCIENCES = mean(SCIENCES), BUSINESS = mean(BUSINESS), EDUCATION = mean(EDUCATION), LITERATURE.AND.LANGUAGES = mean(LITERATURE.AND.LANGUAGES), LIBERAL.ARTS.AND.HISTORY = mean(LIBERAL.ARTS.AND.HISTORY), VISUAL.AND.PERFORMING.ARTS = mean(VISUAL.AND.PERFORMING.ARTS), COMMUNICATION = mean(COMMUNICATION), OTHER = mean(OTHER))

tidy_wrangle3 <- gather(data_wrangle3, Degree, 'STATE')  %>% subset(!STATE == "US")
names(tidy_wrangle3) <- c("State", "Degree", "Graduates")

degrees <- c('COMPUTERS.MATH.AND.STATS', 'BIOLOGY.AND.AGRICULTURE', 'PHYSICS', 'PSYCHOLOGY', 'SOCIOLOGY', 'ENGINEERING', 'MULTIDISCIPLINARY.STUDIES', 'SCIENCES', 'BUSINESS', 'EDUCATION', 'LITERATURE.AND.LANGUAGES' , 'LIBERAL.ARTS.AND.HISTORY', 'VISUAL.AND.PERFORMING.ARTS', 'COMMUNICATION', 'OTHER')

l2 <- list()
for (i in degrees) {
  newdata1 <- subset(tidy_wrangle3, Degree == i)
  p <- ggplot(newdata1, aes(x=State, y=Graduates)) + geom_bar(stat='identity') +ggtitle(i) + coord_flip()
  print(p)
  l2[[i]] <- p
}

png("C:\\workspace\\DataVisualization\\DV_RProject3\\00 Doc\\data_wrangle_vis3.png", width = 25, height = 15, units = "in", res = 150)
grid.newpage()
pushViewport(viewport(layout = grid.layout(3, 25)))   

print(l2[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:5))
print(l2[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 6:10))
print(l2[[3]], vp = viewport(layout.pos.row = 1, layout.pos.col = 11:15))
print(l2[[4]], vp = viewport(layout.pos.row = 1, layout.pos.col = 16:20))
print(l2[[5]], vp = viewport(layout.pos.row = 1, layout.pos.col = 21:25))
print(l2[[6]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:5))
print(l2[[7]], vp = viewport(layout.pos.row = 2, layout.pos.col = 6:10))
print(l2[[8]], vp = viewport(layout.pos.row = 2, layout.pos.col = 11:15))
print(l2[[9]], vp = viewport(layout.pos.row = 2, layout.pos.col = 16:20))
print(l2[[10]], vp = viewport(layout.pos.row = 2, layout.pos.col = 21:25))
print(l2[[11]], vp = viewport(layout.pos.row = 3, layout.pos.col = 1:5))
print(l2[[12]], vp = viewport(layout.pos.row = 3, layout.pos.col = 6:10))
print(l2[[13]], vp = viewport(layout.pos.row = 3, layout.pos.col = 11:15))
print(l2[[14]], vp = viewport(layout.pos.row = 3, layout.pos.col = 16:20))
print(l2[[15]], vp = viewport(layout.pos.row = 3, layout.pos.col = 21:25))


dev.off()
