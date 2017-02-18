# # For this exercise we assume to draw random points inside the square on the [-1,1] unit,
# # and thus the value of Pi = 4(# random pts insid cirlce / # random pts in square)
# sim.pi <- function(iterations = 10000) {
#   # Generate two vectors for random points in unit circle
#   x.pos <- runif(iterations, min=-1, max=1)
#   y.pos <- runif(iterations, min=-1, max=1)
#   # Test if draws are inside the unit circle
#   draw.pos <- ifelse(x.pos^2 + y.pos^2 <= 1, TRUE, FALSE)
#   draws.in <- length(which(draw.pos == TRUE))
#   # Estimate Pi
#   return(4*(draws.in/iterations))
# }

N <-2000
R <- 1
x <- runif(N, min= -R, max= R)
y <- runif(N, min= -R, max= R)
is.inside <- (x^2 + y^2) <= R^2
pi.estimate <- 4 * sum(is.inside) / N
pi.estimate

plot.new()
plot.window(xlim = 1.1 * R * c(-1, 1), ylim = 1.1 * R * c(-1, 1))
points(x[ is.inside], y[ is.inside], pch = '.', col = "green")
points(x[!is.inside], y[!is.inside], pch = '.', col = "red")