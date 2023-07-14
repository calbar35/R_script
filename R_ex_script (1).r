dataset = read.csv('regrex1.csv')

model = lm(formula = y ~ x,
               data = dataset)
               

summary(model)

library(ggplot2)

ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('x vs y') +
  xlab('y') +
  ylab('x')

ggsave(filename = "R_lin_model.png")

dev.off()

ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') 
ggtitle('x vs y')
xlab('y')
ylab('x')

ggsave(filename = "R_lin_scatter.png")

dev.off()


