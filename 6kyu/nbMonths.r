#solution for Buying a car challenge

nbMonths <- function(priceOld, priceNew, saving, loss) {
newSaving <- saving
if(priceOld >= priceNew){
return(c(0,priceOld-priceNew))
} else {
    month <- 1
    priceOld <- priceOld - (priceOld*loss/100)
    priceNew <- priceNew - (priceNew*loss/100)
    while((priceOld + newSaving) < priceNew){
        month <- month + 1
        if(month%%2 == 0){
            loss <- loss + 0.5
        }
        priceOld <- priceOld - (priceOld*loss/100)
        priceNew <- priceNew - (priceNew*loss/100)
        newSaving <- newSaving + saving
    }
return(c(month,floor(priceOld+newSaving-priceNew)))
}
}