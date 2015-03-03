data_wrange_vis1 <- mjdf %>% group_by(STATE) %>% summarise(mean(COMPUTERS.MATH.AND.STATS))
