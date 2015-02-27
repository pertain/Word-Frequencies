# loglog.r
#
# This program takes input from frequency data from a csv file, adds rank data,
# then plots a log-log graph of rank-frequency.

# ===========================
# Words
# ===========================

df <- read.csv("testing2.csv")

rank <- seq(1, length(df$Frequency))

rf <- data.frame("Frequency" = df$Frequency, "Rank" = rank)

png("loglog_words.png")
plot(Frequency ~ Rank, data = rf, type = "n", log ="xy", main = "Log-log Plot\n(word frequencies)")

# This is where you would use abline to control the axes (not done here)

points(Frequency ~ Rank, data = rf)
box()
dev.off()


# ===========================
# Bigrams
# ===========================

dfB <- read.csv("bigramsFreq.csv")

rankB <- seq(1, length(dfB$Frequency))

bg <- data.frame("Frequency" = dfB$Frequency, "Rank" = rankB)

png("loglog_bigrams.png")
plot(Frequency ~ Rank, data = bg, type = "n", log = "xy", main = "Log-log Plot\n(bigram frequencies)")

points(Frequency ~ Rank, data = bg)
box()
dev.off()
