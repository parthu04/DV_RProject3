pdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from PROVIDERS"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_php274', PASS='orcl_php274', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSONLITE'), verbose = TRUE)))
pdf %>% tbl_df
