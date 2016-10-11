dat <- read.csv('../../data/Advertising.csv', row.names = 1)  
tv = dat$TV
radio = dat$Radio
news = dat$Newspaper
sales = dat$Sales

reg = lm(sales~tv+radio+news)
sum_reg = summary(reg)
save(reg, file = "../../data/regression.RData")

png("../../images/scatterplot-tv-sales.png", width=800, height=600)
plot(tv, sales, pch = 19, col = "#8e8f94", xlab = "TV advertising budget", ylab = "Sales")
abline(lm(sales~tv), col = "#5679DF", lwd = 3)
segments(tv, sales, tv, predict(lm(sales~tv)), col='red')
dev.off()


png("../../images/scatterplot-radio-sales.png", width=800, height=600)
plot(radio, sales, pch = 19, col = "#8e8f94", xlab = "Radio advertising budget", ylab = "Sales")
abline(lm(sales~radio), col = "#5679DF", lwd = 3)
segments(radio, sales, radio, predict(lm(sales~radio)), col='red')
dev.off()

png("../../images/scatterplot-newspaper-sales.png", width=800, height=600)
plot(news, sales, pch = 19, col = "#8e8f94", xlab = "Newspaper advertising budget", ylab = "Sales")
abline(lm(sales~news), col = "#5679DF", lwd = 3)
segments(news, sales, news, predict(lm(sales~news)), col='red')
dev.off()

png("../../images/residual-plot.png", width=800, height=600)
plot(reg, which = 1, caption ="Residual plot")
dev.off()

png("../../images/scale-location-plot.png", width=800, height=600)
plot(reg, which = 3, caption ="scale-location-plot")
dev.off()

png("../../images/normal-qq-plot.png", width=800, height=600)
plot(reg, which = 2, caption ="normal-qq-plot.png")
dev.off()

