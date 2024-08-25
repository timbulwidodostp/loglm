# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# A Loglinear Models Use loglm With (In) R Software
install.packages("MASS")
library("MASS")
loglm = read.csv("https://raw.githubusercontent.com/timbulwidodostp/loglm/main/loglm/loglm.csv",sep = ";")
# Estimation Loglinear Models Use loglm With (In) R Software
# Independence model 
loglm_1 <- loglm(Freq~Hair+Eye+Sex, data=loglm)
loglm_1
# Conditional independence
loglm_2 <- loglm(Freq~(Hair + Eye) * Sex, data=loglm)
loglm_2
# Joint independence model.  
loglm_3 <- loglm(Freq~Hair*Eye + Sex, data=loglm)
loglm_3
anova(loglm_1, loglm_2, loglm_3)
# A Loglinear Models Use loglm With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished