#No. 1 distribusi poisson
lambda <- 3
x <- 0:15
pmf <- dpois(x, lambda)
plot(x, pmf, type='h', lwd=3, main='Poisson(λ=3)', xlab='k', ylab='P(X=k)')

##cari nilai P(X >= 5)
nilaiP <- ppois(4, lambda, lower.tail = F)
nilaiP

#No. 2 distribusi hipergeometrik
N <- 100  #populasi
K <- 20   #bola merah
n <- 10    #tanpa pengembalian

##Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

##PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")

#No.3 distribusi binomial
n <- 15
p <- 0.4
x <-0:n
pmf <- dbinom(x, size=n, prob=p)
plot(x, pmf, type="h", lwd=3,main="PMF Binomial", xlab="k", ylab="P(X=k)")

#simulasi 1000 percobaan dan membandingkan dengan histogram
set.seed(2007)
simulasi <- rbinom(1000, size = n, prob = p)

hist(simulasi,
     breaks = seq(-0.5, 15.5, 1),
     probability = T,
     main = "Simulasi Distribusi Binomial",S
     xlab = "k",
     ylab = "p(X = k)"
)
points(x, pmf, pch = 19)