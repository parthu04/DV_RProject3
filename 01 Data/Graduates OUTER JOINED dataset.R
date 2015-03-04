

sigdf <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="WITH TABLE1 AS (SELECT STATE, TOTAL FROM MAJORS m, STATES s WHERE m.geoid = s.GEOGRAPHIC_ID) SELECT i.ST as \\\"State\\\", TOTAL as \\\"Total Graduates\\\", A_MEAN as \\\"Average Income\\\" FROM TABLE1 t LEFT JOIN INCOME i ON t.STATE = i.ST"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_php274', PASS='orcl_php274', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

