# Early Childhood Emotion Recognition

mod<-"
      #Regressions
      EmoRecAv~threat+dep+ses+PBCE_emodang72+sex+age_72+PBCE_emodang72

      "
set.seed(455)
fit1 <- sem(mod, data=data, meanstructure=TRUE,  missing = "FIML",fixed.x=FALSE, se="robust")
summary(fit1,  standardized=TRUE)
lavInspect(fit1, "rsquare")


# Middle Childhood Emotion Recognition

mod<-"
      #Regressions
      CARE_FR_Acc~threat+dep+ses+PBCE_emodang72+sex+Age

      "
set.seed(455)
fit1 <- sem(mod, data=data, meanstructure=TRUE,  missing = "FIML",fixed.x=FALSE, se="robust")
summary(fit1,  standardized=TRUE)
lavInspect(fit1, "rsquare")


# Early Childhood Anger Bias

mod<-"
      #Regressions
      AngerBiasPerc~threat+dep+PBCE_emodang72+ses+sex+age_72
      "
set.seed(455)
fit1 <- sem(mod, data=data, meanstructure=TRUE,  missing = "FIML",fixed.x=FALSE,se="robust")
summary(fit1,  standardized=TRUE)
lavInspect(fit1, "rsquare")



# Middle Childhood Anger Bias (Faces)

mod<-"
      #Regressions
      FR_Mean_AngBias~threat+dep+ses+PBCE_emodang72+sex+Age

      "
set.seed(455)
fit1 <- sem(mod, data=data, meanstructure=TRUE,  missing = "FIML",fixed.x=FALSE, se="robust")

summary(fit1,  standardized=TRUE)
lavInspect(fit1, "rsquare")




