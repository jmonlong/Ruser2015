library(ggplot2)

df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),
                 y = rnorm(30))

library(plyr)
ds <- ddply(df, .(gp), summarise, mean = mean(y), sd = sd(y))

ggplot(df, aes(x = gp, y = y)) +
  geom_point() +
    geom_point(data = ds, aes(y = mean),
               colour = 'red', size = 3)

ggplot(df) +
  geom_point(aes(x = gp, y = y)) +
    geom_point(data = ds, aes(x = gp, y = mean),
               colour = 'red', size = 3)

ggplot() +
  geom_point(data = df, aes(x = gp, y = y)) +
    geom_point(data = ds, aes(x = gp, y = mean),
               colour = 'red', size = 3) +
                 geom_errorbar(data = ds, aes(x = gp, y = mean,
                                 ymin = mean - sd, ymax = mean + sd),
                               colour = 'red', width = 0.4)


plotEx <- function(nb){
  df <- data.frame(gp = factor(rep(letters[1:3], each = nb)),
                   y = rnorm(3*nb))
  ggplot(df, aes(x = gp, y = y)) +
    geom_point() +
      geom_point(data = ds, aes(y = mean),
                 colour = 'red', size = 3)
}

plotEx(nb = 100)

