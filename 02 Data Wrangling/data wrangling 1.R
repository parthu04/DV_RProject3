data_wrangle1 <- mjdf %>% group_by(STATE) %>% summarise(COMPUTERS.MATH.AND.STATS = mean(COMPUTERS.MATH.AND.STATS), BIOLOGY.AND.AGRICULTURE = mean(BIOLOGY.AND.AGRICULTURE), PHYSICS = mean(PHYSICS), PSYCHOLOGY = mean(PSYCHOLOGY), SOCIOLOGY = mean(SOCIOLOGY), ENGINEERING = mean(ENGINEERING), MULTIDISCIPLINARY.STUDIES = mean(MULTIDISCIPLINARY.STUDIES), SCIENCES = mean(SCIENCES), BUSINESS = mean(BUSINESS), EDUCATION = mean(EDUCATION), LITERATURE.AND.LANGUAGES = mean(LITERATURE.AND.LANGUAGES), LIBERAL.ARTS.AND.HISTORY = mean(LIBERAL.ARTS.AND.HISTORY), VISUAL.AND.PERFORMING.ARTS = mean(VISUAL.AND.PERFORMING.ARTS), COMMUNICATION = mean(COMMUNICATION), OTHER = mean(OTHER))
head(data_wrangle)


tidy_wrangle1 <- gather(data_wrangle1, Degree, 'STATE')
names(tidy_wrangle1) <- c("State", "Degree", "Percentage")

states <- c('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'DC', 'FL', 'GE', 'HI', 'ID', 'IL', 'IN', 'KS', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY')

l <- list()
for (i in states) {
  newdata <- subset(tidy_wrangle1, State == i)
  p <- ggplot(newdata, aes(x=Degree, y=Percentage)) + geom_bar(stat='identity') +ggtitle(i) + coord_flip()
  print(p)
  l[[i]] <- p
}
