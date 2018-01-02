number = c(1:13,1:13,1:13,1:13)
number1 = rep(1:13,4)
identical(number,number1)
suit = c(rep("黑桃",13),rep("紅心",13),rep("方塊",13),rep("梅花",13))
cards = paste(suit,number)
sample(cards,5)
str(cards)

dicel1=sample(1:6,1)
dicel2=sample(1:6,1)
dicel3=sample(1:6,1)
paste(dicel1,dicel2,dicel3)
paste(sample(1:6,1),sample(1:6,1),sample(1:6,1))

