
library(ggplot2)
df <- read.csv("Relative Voting Power for President.csv", header=TRUE)
a <- sum(df$Registered..2014...US.Census..Tab4a.)/sum(df$EC.Votes)
ggplot(df, aes((Rep-Dem)*100,1/(1/EC.vote.per.registered.voter/a)*100)) + geom_point() + geom_text(aes(label=X)) + theme_bw() + ylab("Voters per Electoral College Vote [Thousands]") + xlab("Dem-Rep") + geom_hline(yintercept = 100) + ylim(0,350)