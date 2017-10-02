# New library used is stringr

deaths<-read.csv("KoreanConflict.csv",header=TRUE,stringsAsFactors=FALSE)

sum(str_detect(deaths$INCIDENT_DATE,"\\d{8}"))
dim(deaths) #  gives rows and columns in the dataset..


for(i in 1:36574)
  {
    incident<-str_detect(deaths$INCIDENT_DATE[i],"\\d{8}")
    fatality<-str_detect(deaths$FATALITY[i],"\\d{8}")
    if(incident==FALSE & fatality == TRUE){
      deaths$INCIDENT_DATE[i] = deaths$FATALITY[i]
    }
    print(i)
  
  }