# Life Expectancy, Income, and County Characteristics


### About This Data Set

This data is from the Equality of Opportunity Project, an organization of economists and social scientists whose mission it is to use big data to "identify new pathways to upward mobility." They've made the datasets used in their studies on economic opportunity, education, health, and mobility in the US publicly available, their overarching goal being to influence policymaking. This particular dataset contains life expectancy estimates based on gender and income bracket (both percentile and quartile) at the county, commuting zone, state, and national level, as well as various local area characteristics related to health, socioeconomics, labor market conditions, and education. Life expectancy estimates are based on data from 2001-2014, while income distribution is based on tax records from 1999-2014. County health behavior data comes from the 2008 Behavioral Risk Factor Surveillance System, and the economic, demographic, and education data analyzed in this project come from the 2000 census data. I uploaded this data into BigQuery, and limited data transformation was required, as this data was utilized in in the context of scientific studies and was therefore cleaned, adjusted based on age, race, and population, and relatively ready to analyze. This turned out to be challenging at some points, when it was necessary to backtrack and understand the raw underlying data, before it was aggregated, statistically analyzed, and presented in a published context.

### Project Analysis

#### National Level Life Expectancy Analysis

I began my analysis on the relationship between life expectancy and income at the national level. Here are some of the questions I set out to answer:

  1. Which counties have the highest and lowest life expectancies?
  2. How has life expectancy changed over time?
  3. Are there siginifcant differences in life expectancy between the highest and lowest income brackets?
  4. Is there a significant correlation between income and life expectancy?

  For most of these questions, I wanted to look at how the answers compared between the highest and lowest income quartiles. To do this, I used parameters to create a life expectancy measure I could dynamically display based on quartile and gender. After visualizing the county level data through a TopoJSON maplayer, it became clear that this dataset was incomplete when viewed at the national level, leading me to change the focus of my analysis to the state level.

### State Level Life Expectancy Analysis

I chose to focus my state-level analysis on California and North Carolina. I created a derived table to determine that CA had one of the lowest life expectancy discrepancies between quartiles, while NC had one of the highest life expectancy discrepancies between quartiles. I thought it would be interesting to examine the relationship between income and life expectancy between these 2 contrasting states (plus I had almost all the data for counties in these areas!). My analysis was similar at the state level as at the national level, although I also chose to compare standard error in life expectancy (standard deviation of the population life expectancy means) between the highest and lowest quartiles in both states. Although both of these states reflected the trends in life expectancy, income, and gender found at the national level, income-based differences in life expectancy were significantly more pronounced in NC. However, CA reflected greater variation in life expectancy within the lower quartile as compared to the highest quartile, while the same was not found for NC.

### County Characteristics

I created a dashboard displaying various county level characteristics that I believed to be associated with regional life expectancy. I utilized liquid html to create a drill down from the national and state level dashboards, to this one. This way, users, can choose a county they want to look closer at based on life expectancy, and immediately view the county's economic, demographic, health, and educational characteristics, and how they compare to the national average. Although much of the county level data is from 2000, I was able to substitute the 2000 racial demographic data with data from the 2015 ACS demographic datablock.

### Correlations between Life Expectancy and County Characteristics

To determine which of the county characteristics that I looked at were significantly associated with life expectancy, I created a dashboard displaying the correlations between each regional characteristic, and life expectancy. Analyzing this data on the state level (as opposed to the national level) came in useful for this analysis, as extremely large sample sizes tend to inflate the significance values of these tests and diminish their predictive utility (national level county sample size was > 1500, while average state level county sample size was about 64). This dashboard therefore included a global state filter, as well as the dynamic life expectancy filter to allow for significance comparisons between gender and quartiles. To determine significance I included the correlation coefficients, as well as the r^2 to measure the strength of the relationship. Although I was unable to include the significance value equations in my table calcs, I included a link on the dashboard for users to easily navigate to a p value calculator in which they can plug in the correlation coefficient, the sample size, and determine significance. I was also able to include a link to the merged results displaying correlation between life expectancy and the 2015 ACS racial demographic data.

### Income disparity and Life Expectancy

### Voting Preferences Analysis

Lastly, I wanted to examine how 2016 voting preferences interacted with my data. I uploaded a dataset containing county-level election data (Hillary vs. Trump voters)
and created a custom TopoJSON may layer to visualize red vs blue counties nationwide. However, I focused my analysis on CA, a definitively blue state but with a mix of both red and blue counties. I first looked at the association between voting preference and life expectancy, and found a significant negative correlation between the proportion of Trump voters per county and life expectancy. I also looked at voting preference and income, and found a strong negative correlation between % Trump voters and average household income. This correlation increased in significance when I substituted in the ACS 2015 income data in the form of merged results. The proportion of college graduates per county showed a similar relationship with voting preference. Lastly, I wanted to look at obesity and voting preference because of a study I read that used county voting preference in teh 2012 presidential election as a proxy for voter endorsement of personal responsibility approaches to reducing population obesity risk (a Republican stance) versus approaches involving government intervention (a Democratic approach). My analysis supported the study's findings that county obesity prevalence rates are associated with higher support of the Republican presidential candidate.
