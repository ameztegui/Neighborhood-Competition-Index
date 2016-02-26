
source("./Code/NCI_parameters.R")

NCI.plot <- function (species) {
        
        par<- pisy.par
        meanTemp = par$meanTemp
        meanPrec = par$meanPrec
        meanDBH = par$meanDBH
        PDG = par$PDG
        X10 = par$X10
        X1b = par$X1b                                
        X20 = par$X20
        X2b = par$X2b
        X30 = par$X30
        X3b = par$X3b                               
        a_prima = par$a_prima
        b = par$b                            
        alfa = par$alfa
        beta = par$beta
        gamma = par$gamma
        alfan = par$alfan
        betan = par$betan
        delta = par$delta
        sigma = par$sigma
        theta = par$theta
        multi = par$multi
        
        prec <- seq (400, 2100, by = 5)
        temp <- seq (3, 18, by = .2)
        size <- seq (7.5, 80, by = 0.1)
        NCI <- seq (1,10000, by = 100)
        dist <- seq (0,6,by = 0.1)
        
        a_prima = a_prima/multi
        a = a_prima * meanTemp ^ delta * meanPrec ^ sigma * meanDBH^theta
        
        prec.effect <- function (prec, X20, X2b) {
                round(exp(-0.5*(abs((prec - X20))/X2b)^2), 3)
        }
        
        temp.effect <- function (temp, X10, X1b) {
                exp(-0.5*(abs((temp - X10))/X1b)^2)
        }
        
        size.effect <- function (size, X30, X3b) {
                exp(-0.5*(log((size /X30))/X3b)^2)
        }
        
        nci.effect <- function (NCI,a, b) {
                        exp(-a*NCI^b)
        }
        
        dist.effect <- function (dist, betan) {
                1/(dist^beta)
        }
        
        dist.effect.Lor <- function (dist,beta, gamma) {
               1*exp(-gamma*dist^beta)
        }
        

        
        par(mfrow=c(3,2),
            mar = c(4,4,1,2))
        plot(prec, prec.effect(prec,X20, X2b), type="l", lwd=5, col="steelblue", ylim= c(0,1), 
             xlab="Annual Rainfall (mm)", ylab = "Prec. Effect")
        plot(temp, temp.effect (temp,X10,X1b), type="l", lwd=5, col="steelblue", ylim= c(0,1), 
             xlab="Annual Temperature (ºC)", ylab = "Temp. Effect")
        plot(size, size.effect (size,X30, X3b), type="l", lwd=5, col="steelblue", ylim= c(0,1),
             xlab="Size (cm)", ylab = "Size Effect")
        plot(NCI, nci.effect (NCI, a, b), type="l", lwd=5, col="steelblue", ylim= c(0,1),
             xlab="NCI", ylab = "Neighborhood Effect")
        plot(dist, dist.effect (dist, betan), type="l", lwd=5, col="steelblue",
             xlab="Distance (m)", ylab = "NCI")
        plot(dist, dist.effect.Lor (dist, beta, gamma), type="l", lwd=5, col="steelblue",
             xlab="Distance (m)", ylab = "NCI_Lor")
}



pdf(file = "./Figures/Exploratory/NCI_PISY.pdf")
NCI.plot (pisy.par)
dev.off()

pdf(file = "./Figures/Exploratory/NCI_PIHA.pdf")
NCI.plot (piha.par)
dev.off()

pdf(file = "./Figures/Exploratory/NCI_PINI.pdf")
NCI.plot (pini.par)
dev.off()

pdf(file = "./Figures/Exploratory/NCI_QUIL.pdf")
NCI.plot (quil.par)
dev.off()

pdf(file = "./Figures/Exploratory/NCI_QUFA.pdf")
NCI.plot (qufa.par)
dev.off()

pdf(file = "./Figures/Exploratory/NCI_QUPE.pdf")
NCI.plot (qupe.par)
dev.off()
