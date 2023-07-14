dataset = read.csv('regrex1 (4).csv')

model = lm(formula = y ~ x,
               data = dataset)
               

summary(model)

library(ggplot2)

library(grDevices)

png(file = "path/to/my/R_lin_reg_model.png")

ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('x vs y') +
  xlab('y') +
  ylab('x')

dev.off()

png(file = "path/to/my/R_lin_reg_scatter.png")

ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') 
ggtitle('x vs y')
xlab('y')
ylab('x')

dev.off()


