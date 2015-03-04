data_wrange_vis1 <- mjdf %>% group_by(STATE) %>% summarise(mean_compsci = mean(COMPUTERS.MATH.AND.STATS), n=n()) %>% tbl_df
head(data_wrange_vis1)
