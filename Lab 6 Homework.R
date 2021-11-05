#TItle: Homework Lab 6
#Aurthor: Diep Luu
#Date: November 2, 2021

model_logit1 <- glm(vaxx ~ EEDUC,
                    family = binomial, data = Household_Pulse_data)
summary(model_logit1)



Household_Pulse_data$vaxx <- (Household_Pulse_data$RECVDVACC == "yes got vaxx")
is.na(Household_Pulse_data$vaxx) <- which(Household_Pulse_data$RECVDVACC == "NA") 
table(Household_Pulse_data$vaxx,Household_Pulse_data$EEDUC)
summary(Household_Pulse_data)
#this summary just gave all of the numbers of the data
summary(as.numeric(Household_Pulse_data$vaxx))
#while checking this summary gave a number of how many NAs are in it and the numbers were 1 or less than 1

vaxx_factor <- as.factor(Household_Pulse_data$vaxx)
levels(vaxx_factor)
#for some reason i got an error about unexpected symbol for this
levels(vaxx_factor) <- c("no","yes")

glm(RECVDVACC ~ EEDUC,family = binomial, data=Household_Pulse_data)

pick_use1 <- (Household_Pulse_data$REGION == "South") 
dat_use1 <- subset(Household_Pulse_data, pick_use1)
#For this subset I decided to use the region South instead of Northeast in the example.

dat_use1$RECVDVACC <- droplevels(dat_use1$RECVDVACC)

model_logit2 <- glm(vaxx ~ TBIRTH_YEAR + EEDUC + MS + RRACE + RHISPANIC + GENID_DESCRIBE,
                    family = binomial, data = dat_use1)
summary(model_logit2)
#For this model, I wanted to focus on the marital status, if they're Hispanic or not, education level, their birth year and gender
#The estimates for education levels from some hs to bach degree are all less than 2 so the liklihood of them getting vaccinations is high. However, the eduction degree of adv deg is higher than 2 and the liklihood would be lower. 

#For this model, the predictions would be based on a married Asian female residing in the SOuth with different variations of education levels.
to_be_predicted4 <- data.frame(EEDUC = "some hs", MS = "married", RRACE = "Asian", GENID_DESCRIBE = "female", data = Household_Pulse_data)
to_be_predicted4$yhat <- predict(model_logit2, to_be_predicted4, type = "response")
summary(to_be_predicted4$yhat)
#For some reason, every time I use the coding, there is always an error of one thing not found. 
#In this case, it keeps saying TBIRTH_Year is not found 