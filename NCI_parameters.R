# this script contains the parameters of all the species from
# Gomez-Aparicio et al. (2011). It is to be called when computing NCI growth for 
# analyses of complementarity


pisy.par <- list (
        meanTemp = 9.2, meanPrec = 920, meanDBH = 15.1,       # To recalculate a
        PDG = 9.13,
        X10 = 1.09, X1b = 11.75,                                # Temperature Effect
        X20 = 2386.82, X2b = 2660.83,                          # Precipitation Effect
        X30 = 19.92, X3b = 1.11,                               # Size Effect
        a_prima = 78.56, b = 1.00,                             # Neighborhood Effect
        alfa = 1.79, beta = 0.61, gamma = 0.81,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.82, betan = 1.45,                            # NCI calculation (formula divisor)
        delta = 0.32, sigma = -0.13, theta = -1.11,            # modifiers for a (t,p,dbh)
        multi = 3801.89)


pini.par <- list (
        meanTemp = 11.0, meanPrec = 717, meanDBH = 13.4,       # To recalculate a
        PDG = 9.39,
        X10 = 0.47, X1b = 11.59,                                # Temperature Effect
        X20 = 2569.75, X2b = 2131.21,                          # Precipitation Effect
        X30 = 18.68, X3b = 1.05,                               # Size Effect
        a_prima = 186.39, b = 1.00,                            # Neighborhood Effect
        alfa = 1.92, beta = 0.75, gamma = 0.58,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.96, betan = 1.11,                            # NCI calculation (formula divisor)
        delta = 0.11, sigma = -0.19, theta = -1.23,            # modifiers for a (t,p,dbh)
        multi = 3597.5)


piha.par <- list (
        meanTemp = 13.8, meanPrec = 517, meanDBH = 13.9,       # To recalculate a
        PDG = 8.72,
        X10 = 1.65,X1b = 30.13,                                # Temperature Effect
        X20 = 1002.05, X2b = 729.77,                          # Precipitation Effect
        X30 = 24.88, X3b = 1.33,                               # Size Effect
        a_prima = 144.26, b = 1.00,                            # Neighborhood Effect
        alfa = 1.80, beta = 0.80, gamma = 0.43,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.85, betan = 0.92,                            # NCI calculation (formula divisor)
        delta = 0.39, sigma = -0.23, theta = -1.53,            # modifiers for a (t,p,dbh)
        multi = 1592.43)


quil.par <- list (
        meanTemp = 12.1, meanPrec = 723, meanDBH = 10.5,       # To recalculate a
        PDG = 3.96,
        X10 = 25.81,X1b = 24.52,                                # Temperature Effect
        X20 = 1262.49, X2b = 1031.06,                          # Precipitation Effect
        X30 = 25.97, X3b = 1.75,                               # Size Effect
        a_prima = 0.52, b = 1.00,                             # Neighborhood Effect
        alfa = 0.98, beta = 7.47, gamma = 0.00,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.08, betan = 0.24,                            # NCI calculation (formula divisor)
        delta = 0.71, sigma = -0.05, theta = -0.39,            # modifiers for a (t,p,dbh)
        multi = 317.38)


qufa.par <- list (
        meanTemp = 11.1, meanPrec = 735, meanDBH = 10,       # To recalculate a
        PDG = 5.27,
        X10 = 37.21,X1b = 26.16,                                # Temperature Effect
        X20 = 1297.80, X2b = 1147.10,                          # Precipitation Effect
        X30 = 52.99, X3b = 1.70,                               # Size Effect
        a_prima = 717.19, b = 1.00,                            # Neighborhood Effect
        alfa = 1.25, beta = 6.92, gamma = 0.00,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.21, betan = 0.37,                            # NCI calculation (formula divisor)
        delta = -0.50, sigma = -0.26, theta = -1.41,            # modifiers for a (t,p,dbh)
        multi = 521.78)


qupe.par <- list (
        meanTemp = 10.3, meanPrec = 991, meanDBH = 12.4,       # To recalculate a
        PDG = 5.01,
        X10 = 25.41, X1b = 21.80,                                # Temperature Effect
        X20 = 1021.65, X2b = 2820.18,                          # Precipitation Effect
        X30 = 34.15, X3b = 1.33,                               # Size Effect
        a_prima = 41.53, b = 1.00,                             # Neighborhood Effect
        alfa = 1.38, beta = 3.60, gamma = 0.00,                # NCI calculation (formula exponencial, Lorena)
        alfan = 1.29, betan = 0.51,                            # NCI calculation (formula divisor)
        delta = -0.25, sigma = 0, theta = -1.13,               # modifiers for a (t,p,dbh)
        multi = 702.0367)



