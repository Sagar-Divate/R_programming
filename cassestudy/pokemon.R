#describe dataset 
#ability
#against_electric (how he perforam against him)
#base_total
#0-no 1-yes

#read datset

nrow(pokemon)
ncol(pokemon)
# frequency check on respective column
table(pokemon$is_legendary)
table(pokemon$generation)
table(pokemon$type1)

# min-max
min(pokemon $hp)
max(pokemon $hp)
max(pokemon$speed)
# missing value
is.na(pokemon$abilities) # false=no na_value
sum(is.na(pokemon$abilities))

#renaming
colnames(pokemon)
colnames(pokemon)=='type1'

colnames(pokemon)[colnames(pokemon)=='type1']<-'primary_type'
colnames(pokemon)[colnames(pokemon)=='type2']<-'secondary_type'
colnames(pokemon)



#data manupalation

#select where primary type is grass
library(dplyr)
pokemon %>% filter(pokemon$primary_type=='grass')->grass_pokemon
# min speed of grass pokemon
library(ggplot2)
ggplot(data=grass_pokemon,aes(x=hp))+geom_histogram()

# what is the variation of height in grass type pokemon
ggplot(data=grass_pokemon,aes(x=height_m))+geom_histogram()

# distribution of the weigh of grasss type pokemon
ggplot(data=grass_pokemon,aes(x=weight_m))+geom_histogram()

#
pokemon %>% filter(primary_type=='fire')->fire_pokemon
min(fire_pokemon$speed)
max(fire_pokemon$speed)

#how many fire type pokemon belong to different gen
ggplot(data=fire_pokemon,aes(x=generation,fill=as.factor(generation)))+geom_bar()

#secondary fire pokemon 
ggplot(data=fire_pokemon,aes(x=secondary_type,fill=as.factor(secondary_type)))+geom_bar()

# difference between special attack and special defense of fire_type pokemon  
ggplot(data=fire_pokemon,aes(x=sp_attack,y=sp_defense))+geom_point()
#obseration (fire type pokemon has a special attack then it would also mean that the fire type pokemon would there is a greather probsbility for the fire type pokemon to have  a higher special defense as well) 

ggplot(data=fire_pokemon,aes(x=height_m,y=weight_kg))+geom_point()





















