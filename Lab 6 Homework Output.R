#TItle: Homework Lab 6
> #Aurthor: Diep Luu
  > #Date: November 2, 2021
  > 
  > model_logit1 <- glm(vaxx ~ EEDUC,
                        +                     family = binomial, data = Household_Pulse_data)
  > summary(model_logit1)
  
  Call:
    glm(formula = vaxx ~ EEDUC, family = binomial, data = Household_Pulse_data)
  
  Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
  -2.4785   0.3081   0.4054   0.6029   0.8312  
  
  Coefficients:
    Estimate Std. Error z value Pr(>|z|)    
  (Intercept)      0.92495    0.11020   8.393  < 2e-16 ***
    EEDUCsome hs    -0.03962    0.13189  -0.300  0.76390    
  EEDUCHS diploma  0.38389    0.11364   3.378  0.00073 ***
    EEDUCsome coll   0.68799    0.11245   6.118 9.46e-10 ***
    EEDUCassoc deg   0.78620    0.11483   6.846 7.57e-12 ***
    EEDUCbach deg    1.53254    0.11330  13.526  < 2e-16 ***
    EEDUCadv deg     2.09910    0.11590  18.111  < 2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
  
  (Dispersion parameter for binomial family taken to be 1)
  
  Null deviance: 49071  on 68262  degrees of freedom
  Residual deviance: 46446  on 68256  degrees of freedom
  (851 observations deleted due to missingness)
  AIC: 46460
  
  Number of Fisher Scoring iterations: 5
  
  > 
    > 
    > 
    > Household_Pulse_data$vaxx <- (Household_Pulse_data$RECVDVACC == "yes got vaxx")
  > is.na(Household_Pulse_data$vaxx) <- which(Household_Pulse_data$RECVDVACC == "NA") 
  > table(Household_Pulse_data$vaxx,Household_Pulse_data$EEDUC)
  
  less than hs some hs HS diploma some coll assoc deg bach deg adv deg
  FALSE          115     269       1647      2396      1132     1565     813
  TRUE           290     652       6097     12022      6266    18272   16727
  > summary(Household_Pulse_data)
  RHISPANIC       RRACE                EEDUC               MS        EGENID_BIRTH       GENID_DESCRIBE       SEXUAL_ORIENTATION
  Not Hispanic:62660   White:56938   less than hs:  411   NA       :  881   male  :27592   NA         : 1131   NA            : 1506   
  Hispanic    : 6454   Black: 5412   some hs     :  936   married  :40036   female:41522   male       :26796   gay or lesbian: 2343   
  Asian: 3561   HS diploma  : 7857   widowed  : 3872                  female     :40263   straight      :61238   
  Other: 3203   some coll   :14596   divorced :10310                  transgender:  202   bisexual      : 2288   
  assoc deg   : 7508   separated: 1214                  other      :  722   something else:  871   
  bach deg    :20075   never    :12801                                      dont know     :  868   
  adv deg     :17731                                                                               
  KIDS_LT5Y                         KIDS_5_11Y                        KIDS_12_17Y   
  NA                        :62342   NA                       :58467   NA                        :58046  
  Yes children under 5 in HH: 6772   Yes children 5 - 11 in HH:10647   Yes children 12 - 17 in HH:11068  
  
  
  
  
  
  ENROLLNONE                  RECVDVACC                          DOSESRV                          GETVACRV    
  NA                                :64285   NA                 :  851   NA                       : 9105   NA                      :61159  
  children not in any type of school: 4829   yes got vaxx       :60326   yes got all doses        :57762   definitely will get vaxx:  609  
  no did not get vaxx: 7937   yes plan to get all doses: 1993   probably will get vaxx  :  731  
  no will not get all doses:  254   unsure about vaxx       : 1584  
  probably not            : 1599  
  definitely not          : 3432  
  
  KIDDOSES                        KIDGETVAC                          HADCOVID                      WRKLOSSRV    
  NA                                :58318   NA                      :65384   NA                       : 1363   NA                    : 1961  
  Yes kids got or will get all doses: 7135   definitely will get vaxx:  487   yes doctor told had covid: 9122   yes recent HH job loss: 8058  
  no kids did not or will not       : 3661   probably will get vaxx  :  439   no did not               :58221   no recent HH job loss :59095  
  unsure about vaxx       :  736   not sure                 :  408                                 
  probably not            :  593                                                                   
  definitely not          : 1036                                                                   
  dont know yet           :  439                                                                   
  ANYWORK                     KINDWORK                RSNNOWRKRV                                         CHLDCARE    
  NA                           : 2135   NA                 :30540   NA              :42659   NA                                       :58419  
  yes employment in last 7 days:39237   work for govt      : 6378   retired         :15024   yes impacts to childcare because pandemic: 2566  
  no employment in last 7 days :27742   work for private co:21370   other           : 4027   no                                       : 8129  
  work for nonprofit : 5055   sick or disabled: 1451                                                    
  self employed      : 4966   caring for kids : 1329                                                    
  work in family biz :  805   laid off        : 1164                                                    
  (Other)         : 3460                                                    
  CURFOODSUF                                                  CHILDFOOD    
  NA                            : 6770   NA                                                 :64258  
  had enough food               :49234   often kids not eating enough because couldnt afford:  271  
  had enough but not what wanted: 9947   sometimes kids not eating enough                   : 1191  
  sometimes not enough food     : 2486   kids got enough food                               : 3394  
  often not enough food         :  677                                                              
  
  
  ANXIOUS                                                  WORRY      
  NA                                             : 7946   NA                                             : 8016  
  no anxiety over past 2 wks                     :26611   no worry over past 2 wks                       :31876  
  several days anxiety over past 2 wks           :19794   several days worried over past 2 wks           :17936  
  more than half the days anxiety over past 2 wks: 6140   more than half the days worried over past 2 wks: 4979  
  nearly every day anxiety                       : 8623   nearly every day worry                         : 6307  
  
  
  TENURE                                     LIVQTRRV                RENTCUR                     MORTCUR     
  NA                           :11103   live in detached 1 family          :41348   NA             :56572   NA                 :41200  
  housing owned free and clear :16738   NA                                 :11336   current on rent:11239   current on mortgage:26462  
  housing owned with mortgage  :28016   live in bldg w 5+ apts             : 6731   behind on rent : 1303   behind on mortgage : 1452  
  housing rented               :12579   live in 1 family attached to others: 4628                                                      
  housing occupied without rent:  678   live in mobile home                : 1781                                                      
  live in building with 3-4 apts     : 1737                                                      
  (Other)                            : 1553                                                      
  EVICT                                                FORCLOSE               EST_ST     
  NA                                        :67859   NA                                           :67695   California   : 5359  
  very likely evicted in next 2 months      :  207   very likely forclosed in next 2 months       :   65   Texas        : 3766  
  somewhat likely evicted in next 2 months  :  377   somewhat likely forclosed in next 2 months   :  218   Florida      : 2728  
  not very likely evicted in next 2 months  :  345   not very likely forclosed in next 2 months   :  474   Washington   : 2634  
  not at all likely evicted in next 2 months:  326   not at all forclosed evicted in next 2 months:  662   Massachusetts: 1965  
  Oregon       : 1934  
  (Other)      :50728  
  PRIVHLTH                      PUBHLTH            REGION                        INCOME       TBIRTH_YEAR  
  has private health ins:46869   has public health ins:23346   Northeast:10478   NA                   :14637   Min.   :1933  
  no private health ins :11275   no public health ins :33381   South    :22680   HH income $100k - 149:10117   1st Qu.:1955  
  NA                    :10970   NA                   :12387   Midwest  :13651   HH income $50k - 74.9: 9330   Median :1967  
  West     :22305   HH income $75 - 99.9 : 7830   Mean   :1968  
  HH income $200k +    : 6117   3rd Qu.:1981  
  HH income $35k - 49.9: 5805   Max.   :2003  
  (Other)              :15278                 
  Num_kids_Pub_School Num_kids_Priv_School Num_kids_homeschool        Works_onsite            works_remote            Shop_in_store  
  Min.   :0.00        Min.   :0.00         Min.   :0.00        NA           : 6350   NA             : 8022   NA              : 6873  
  1st Qu.:1.00        1st Qu.:0.00         1st Qu.:0.00        worked onsite:34918   worked remotely:22863   shopped in store:53576  
  Median :2.00        Median :1.00         Median :1.00        no           :27846   no             :38229   no              : 8665  
  Mean   :1.71        Mean   :1.03         Mean   :0.87                                                                              
  3rd Qu.:2.00        3rd Qu.:2.00         3rd Qu.:2.00                                                                              
  Max.   :4.00        Max.   :2.00         Max.   :2.00                                                                              
  NA's   :55108       NA's   :66430        NA's   :67421                                                                             
                 eat_in_restaurant    vaxx        
 NA                       : 7217   Mode :logical  
 eat at restaurant indoors:32405   FALSE:7937     
 no                       :29492   TRUE :60326    
                                   NA's :851      
  
  
  
  > #this summary just gave all of the numbers of the data
    > summary(as.numeric(Household_Pulse_data$vaxx))
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
 0.0000  1.0000  1.0000  0.8837  1.0000  1.0000     851 
> #while checking this summary gave a number of how many NAs are in it and the numbers were 1 or less than 1
> 
> vaxx_factor <- as.factor(Household_Pulse_data$vaxx)
> levels(vaxx_factor)
[1] "FALSE" "TRUE" 
> #for some reason i got an error about unexpected symbol for this
> levels(vaxx_factor) <- c("no","yes")
> 
> glm(RECVDVACC ~ EEDUC,family = binomial, data=Household_Pulse_data)

Call:  glm(formula = RECVDVACC ~ EEDUC, family = binomial, data = Household_Pulse_data)

Coefficients:
    (Intercept)     EEDUCsome hs  EEDUCHS diploma   EEDUCsome coll   EEDUCassoc deg    EEDUCbach deg     EEDUCadv deg  
       4.212128        -0.094718         0.015158         0.182322        -0.003643         0.210906         0.307838  

Degrees of Freedom: 69113 Total (i.e. Null);  69107 Residual
Null Deviance:	    9175 
Residual Deviance: 9164 	AIC: 9178
> 
> pick_use1 <- (Household_Pulse_data$REGION == "South") 
> dat_use1 <- subset(Household_Pulse_data, pick_use1)
> #For this subset I decided to use the region South instead of Northeast in the example.
> 
> dat_use1$RECVDVACC <- droplevels(dat_use1$RECVDVACC)
> 
> model_logit2 <- glm(vaxx ~ TBIRTH_YEAR + EEDUC + MS + RRACE + RHISPANIC + GENID_DESCRIBE,
+                     family = binomial, data = dat_use1)
> summary(model_logit2)

Call:
glm(formula = vaxx ~ TBIRTH_YEAR + EEDUC + MS + RRACE + RHISPANIC + 
    GENID_DESCRIBE, family = binomial, data = dat_use1)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-3.2245   0.2455   0.3902   0.5456   1.5669  

Coefficients:
                           Estimate Std. Error z value Pr(>|z|)    
(Intercept)               93.716657   3.289282  28.492  < 2e-16 ***
TBIRTH_YEAR               -0.047093   0.001661 -28.349  < 2e-16 ***
EEDUCsome hs               0.081404   0.223053   0.365  0.71515    
EEDUCHS diploma            0.527162   0.191353   2.755  0.00587 ** 
EEDUCsome coll             0.957925   0.189981   5.042 4.60e-07 ***
EEDUCassoc deg             1.020198   0.194587   5.243 1.58e-07 ***
EEDUCbach deg              1.812809   0.191858   9.449  < 2e-16 ***
EEDUCadv deg               2.198984   0.195261  11.262  < 2e-16 ***
MSmarried                  0.005921   0.307399   0.019  0.98463    
MSwidowed                 -0.100144   0.323718  -0.309  0.75705    
MSdivorced                -0.212304   0.310482  -0.684  0.49411    
MSseparated               -0.469340   0.325547  -1.442  0.14939    
MSnever                    0.240718   0.309935   0.777  0.43735    
RRACEBlack                -0.030209   0.057657  -0.524  0.60032    
RRACEAsian                 1.160010   0.161589   7.179 7.03e-13 ***
RRACEOther                -0.422767   0.091613  -4.615 3.94e-06 ***
RHISPANICHispanic          0.323512   0.069894   4.629 3.68e-06 ***
GENID_DESCRIBEmale        -0.272966   0.285410  -0.956  0.33887    
GENID_DESCRIBEfemale      -0.368196   0.284375  -1.295  0.19540    
GENID_DESCRIBEtransgender  0.134816   0.458727   0.294  0.76884    
GENID_DESCRIBEother       -0.640258   0.334084  -1.916  0.05531 .  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 17317  on 22411  degrees of freedom
Residual deviance: 15147  on 22391  degrees of freedom
  (268 observations deleted due to missingness)
AIC: 15189

Number of Fisher Scoring iterations: 5

> #For this model, I wanted to focus on the marital status, if they're Hispanic or not, education level, their birth year and gender
  > #The estimates for education levels from some hs to bach degree are all less than 2 so the liklihood of them getting vaccinations is high. However, the eduction degree of adv deg is higher than 2 and the liklihood would be lower. 
    > 
    > #For this model, the predictions would be based on a married Asian female residing in the SOuth with different variations of education levels.
    > to_be_predicted4 <- data.frame(EEDUC = "some hs", MS = "married", RRACE = "Asian", GENID_DESCRIBE = "female", data = Household_Pulse_data)
  > to_be_predicted4$yhat <- predict(model_logit2, to_be_predicted4, type = "response")
  Error in eval(predvars, data, env) : object 'TBIRTH_YEAR' not found
  > summary(to_be_predicted4$yhat)
  Length  Class   Mode 
  0   NULL   NULL 
  > #For some reason, every time I use the coding, there is always an error of one thing not found. 
    > #In this case, it keeps saying TBIRTH_Year is not found 