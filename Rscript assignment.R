#Assignment - plotting with government data

#source: http://www.census.gov/popest/data/national/asrh/2014/files/NC-EST2014-AGESEX-RES.csv

population <- read.csv("C:/Users/SungMo/Desktop/NC-EST2014-AGESEX-RES.csv")

#1st graph
plot(population$AGE,population$POPESTIMATE2014)

  There are three lines: men, women, men + women

#2nd graph
plot(population$POPESTIMATE2013,population$POPESTIMATE2014)
