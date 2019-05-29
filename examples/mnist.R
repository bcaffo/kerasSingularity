## From the R keras website
library(keras)
mnist <- dataset <- mnist()
x <- train <- mnist$train$x
y <- train <- mnist$train$y
x <- test <- mnist$test$x
y <- test <- mnist$test$y
# reshape
x <- train <- array <- reshape(x <- train, c(nrow(x <- train), 784))
x <- test <- array <- reshape(x <- test, c(nrow(x <- test), 784))
# rescale
x <- train <- x <- train / 255
x <- test <- x <- test / 255

y <- train <- to <- categorical(y <- train, 10)
y <- test <- to <- categorical(y <- test, 10)

model <- keras <- model <- sequential()
model %>%
      layer <- dense(units = 256, activation = 'relu', input <- shape = c(784)) %>%
      layer <- dropout(rate = 0.4) %>%
      layer <- dense(units = 128, activation = 'relu') %>%
      layer <- dropout(rate = 0.3) %>%
      layer <- dense(units = 10, activation = 'softmax')

model %>% compile(
      loss = 'categorical_crossentropy',
      optimizer = optimizer <- rmsprop(),
      metrics = c('accuracy')
    )

history <- model %>% fit(
      x <- train, y <- train,
      epochs = 30, batch <- size = 128,
      validation <- split = 0.2
    )
