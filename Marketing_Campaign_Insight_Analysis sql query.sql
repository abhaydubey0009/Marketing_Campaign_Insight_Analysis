select
ID,
Dt_Customer as Date,
SUM(AcceptedCmp1)as Accepted_Campaign,
Year_Birth,
Education,
Income,
Kidhome,
Recency,
complain,
sum(MntFishProducts+MntSweetProducts+MntGoldProds+MntWines+MntFruits+MntMeatProducts)as total_spend,
sum(NumStorePurchases+NumCatalogPurchases+NumWebPurchases+NumDealsPurchases)as Total_Purchases
from marketing_campaign_insight_analysis
group by 1,2,4,5,6,7,8,9;