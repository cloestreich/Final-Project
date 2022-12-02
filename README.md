# Final-Project

For our third deliverable, we’re analyzing the top 5 family names from the two orders to see the population trends.  We’ve also included 3 weather graphs of the minimum temperature, maximum temperature, and humidity per day.

Our almost completed Google Slides are here: https://docs.google.com/presentation/d/1_p1KbOZq7u8of2k3rbiGheP1LCw9jci9aMZHwpp4OmI/edit?usp=sharing

The README for the Machine Learning (both Initial and Advanced) are in the Google Slides, but they are here below to be included in the README:

### Machine Learning Model (Initial)

•	The initial machine learning model used was a supervised linear regression.

•	This is defined as a supervised Machine Learning model in which the model finds the best fit linear line between the independent and dependent variable.

•	The dependent ‘y’ variable was the number of individual insects found on a given date.

•	The independent ‘X’ variables were the Average Daily Temperature (F) and Average Humidity (%).

•	The model was applied to the full collection of families of each species combined to see if there was an overall relationship.

•	The model was then applied to a subset of the top 5 represented families in each species, as the full data set was too cumbersome to make any meaningful changes to.

•	Finally, the model was applied to each species separately.

•	MOTH_V_BEETLE | Tableau Public

### Machine Learning Model (Advanced)

•	Based on feedback and inconclusive results, the team chose to apply a Random Forest Regression to the dataset.

•	This supervised Machine Learning merges the output of multiple decision trees to generate a final output.

•	Once again, the dependent ‘y’ variable was the number of individual insects found on a given date.

•	The independent ‘X’ variables were the Average Daily Temperature (F) and Average Humidity (%).

•	The model was applied to the full collection of families of each species combined to see if there was an overall relationship.

•	The model was then applied to a subset of the top 5 represented families in each species, as the full data set was too cumbersome to make any meaningful changes to.

•	Finally, the model was applied to each species separately.


The purpose of this project is to chart the population of insects over a certain period compared to temperatures.  We’re looking to see if the temperatures from 1992 to 2009 have an impact on the insect population and if global warming plays a part.  We will also use this data to predict future results.  The reason why we selected the topic is because we’re trying to track the future population of insects and one of the members of the group is very interested in insects.

![Insect1](https://user-images.githubusercontent.com/108380062/203672843-a335059e-c7c2-4ff9-8404-5c897fe9f136.png)

We used the databases from our csv files to gather and sort out the data in Tableau (links below...I'm hoping the Tableau links count as commits).

Weather Data | Tableau Public : https://public.tableau.com/app/profile/chris.oestreich/viz/WeatherData_16689663541100/LineGraphforAvgTempperYear?publish=yes

Insect 'Family Name' average per year | Tableau Public : 
https://public.tableau.com/app/profile/chris.oestreich/viz/InsectFamilyNameaverageperyear/InsectFamilyNameAvgbyYear?publish=yes

Combined Data Dashboard | Tableau Public : https://public.tableau.com/app/profile/chris.oestreich/viz/CombinedDataDashboard_16689677288090/Dashboard1?publish=yes

We also used the databases from our csv files to split the data using SQL.  We will be using the data found to create the final dashboard.

Our main goal is to try to identify the trend of the population of insects compared to temperatures after the period of the years that we’ve chosen.  The question being asked, very broadly, is "Does a gradual increase in temperature due to global warming at a localized site in Copenhagen, Denmark, cause a decrease in visits of moths and / or beetles?"
## To answer this question, the team used a series of curated, quality data sets gathered over 18 years to feed into a Machine Learning algorithm.

### The first question to be answered is, "What kind of preliminary data preprocessing was used in the machine learning algorithm?"
The data was stored in two, separate databases.  The first database was temperature data collected at the site.  This data consisted of a high temperature, a low temperature, a median temperature, and an average humidity.  The second database was comprised of a collection of bug species (specifically beetles and moths), and the number of visits that each one of the species made to an artificial light source at the site of the temperature readings on any given day.
One team member combined these data sources - first in Excel, then in SQL - for use in the Machine Learning code.

### The second question to be answered is, "What kind of preliminary feature engineering and preliminary feature selection, including a decision-making process, was used in the machine learning?"
The data consisted of hundreds of different species of moths and beetles.  This led to incredibly long cycle times of training the algorithm.  So very early on, it was decided that only the top 5 (from a volume perspective) species of both moths and beetles would be used in the training and testing of the Machine Learning algorithm.  The number of individual visits per species would be the 'Y', or outcome, variable, and the collection of 3 temperature values and the humidity would be the 'X' variables.

![Insect2](https://user-images.githubusercontent.com/108380062/203672866-07f6cf1e-a2b7-4a80-a96f-d97e5402c288.png)

### The third question to be answered is, "How was the data split into training and testing sets?"
The data was initially separated into an 70:30 ratio, but industry standard generally points to a 80:20 ratio for training versus testing, so that was the ratio that was ultimately used for the preliminary testing.

### The fourth question to be answered is, "What model was chosen, and what are the limitation and benefits of said model?"
The linear regression model was chosen.  It is used when we know what we're looking for or what our output should be.
Benefits of this model include, but are not limited to:
 - Simple to implement.
 - Easy to interpret the output coefficients.
 - Less complex.
 
![Insect3](https://user-images.githubusercontent.com/108380062/203672897-7e98675a-6b8e-4f79-9016-066a03c5aaca.png)

Limitations of this model include, but are not limited to:
 - Outliers have a huge effect on the regression.
 - Boundaries are always linear.

### Next Steps
The team will implement a random forest regression model in lieu of the simple Linear Regression model that has been used previously.  It is a supervised learning algorithm that uses an ensemble learning method for regression.  The ensemble learning method is a technique that combines predictions from multiple ML algorithms to make a more accurate prediction than a single model.  We hope that this will provide more definitive results.
