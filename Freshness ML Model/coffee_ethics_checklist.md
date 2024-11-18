
# Ethics Checklist for Coffee Freshness Prediction

## A. Data Collection
 - [ ] **A.1 Informed consent**: If there are human subjects, have they given informed consent, where subjects affirmatively opt-in and have a clear understanding of the data uses to which they consent?

This dataset did not use human subjects, so there was no need for informed consent. The only human interaction with the dataset was the researchers collecting the data. These researchers, including myself 
and my research advisor Dr. Wakabayashi, both consented to the use of this data for the machine learning project. 

 - [ ] **A.2 Collection bias**: Have we considered sources of bias that could be introduced during data collection and survey design and taken steps to mitigate those?

It is possible that the collection methods from the sureying techniques introduced in bias into the dataset. To mitigate any bias or error that was introduced into the dataset
through the collection technqiues of the study, every sample was run in triplicate. The goal of using this method was to reduce any error that could come from one 
incorrect measurement. 

 - [ ] **A.3 Limit PII exposure**: Have we considered ways to minimize exposure of personally identifiable information (PII) for example through anonymization or not collecting information that isn't relevant for analysis?

There is no PPI present in this dataset. So, no steps were taken to limit PPI exposure because it was not relavent to this dataset. 

 - [ ] **A.4 Downstream bias mitigation**: Have we considered ways to enable testing downstream results for biased outcomes (e.g., collecting data on protected group status like race or gender)?

There was no information that was collected that could have a biases result based on protected group status. However, in order to reduce any bias in the model that was generated,
all samples will always be run in triplicate if not more and any error associated with the measurements will be additionally recorded. 

## B. Data Storage
 - [ ] **B.1 Data security**: Do we have a plan to protect and secure data (e.g., encryption at rest and in transit, access controls on internal users and third parties, access logs, and up-to-date software)?

There is a plan to make sure that the dataset and code is not edited to change the dataset. The available copy of the dataset to the research group that is using the ML model has an access and edit 
log so that no data is changed after the tests have been conducted. There is no plan to encrypt the data, as the dataset does not contain any private information 

 - [ ] **B.2 Right to be forgotten**: Do we have a mechanism through which an individual can request their personal information be removed?

There is no personal information in this dataset, so no mechanisms were put into considerations to allow people to remove personal information. In the future, as more data is 
collected, this can be re-evaluated. If other people contribute data to this project, a mechanism can be added into the data analysis process that allows people to request for 
their datasets to be removed. For now, this is not a feature that was added into the project because it is not relavent. 

 - [ ] **B.3 Data retention plan**: Is there a schedule or plan to delete the data after it is no longer needed?

There is no plan to delete the data after it is no longer needed. The goal with maintaining the accuracy and transparancy of the model is to keep the dataset, as well as any updates
to the dataset, are open to the public. The data does not have any personal or sensitive information about any people, so there is no worry about anyone needing to remove their information
as time passes. The only instance where data would be removed from the ML model is if new data is obtained in the lab and the old dataset was proven to be inaccurate. However, this is not a 
situation that I am currently considering, because we are not close to being able to remove datapoints. This is something to consider in the future to maintain an accurate model. 

## C. Analysis
 - [ ] **C.1 Missing perspectives**: Have we sought to address blindspots in the analysis through engagement with relevant stakeholders (e.g., checking assumptions and discussing implications with affected communities and subject matter experts)?

The analysis of this data relies on previous studies that have been conducted on the compounds that were measured in the coffee. It is possible that the freshness and taste characteristics
that were associated with the coffee in this analysis do not accurately reflect the way that the stakeholders taste and process the coffee, resulting in discrepancies between the user of the model
and the actual result of the mdoel. To address this, the different components were confirmed in multiple literature searches that have occurred over the past six months of development of the dataset.

The model has also been discussed with local coffee experts, including professors at Bucknell University who have studied coffee science and local roasters and coffee salespeople from the  Lewisburg and
surrounding areas. The model's results were discussed and the coffee experts helped to shed light into further characteristics of the model that needed to be developed, like additional tests that were added
throughout the collection of the dataset. 

 - [ ] **C.2 Dataset bias**: Have we examined the data for possible sources of bias and taken steps to mitigate or address these biases (e.g., stereotype perpetuation, confirmation bias, imbalanced classes, or omitted confounding variables)?

The dataset could have bias that occurred during the sampling process. It is possible that the steps of collecting the data skewed the results. In order to adress this, each experimental method was documented and repeated by the same researcher in 
triplicate. This ensured that any outliers that could have been caused by the data collection method would be recognized and could be removed if neccessary. Also, the results were confirmed by the advisor of the research group as well as checked with 
other studies within the body of coffee literature. 

 - [ ] **C.3 Honest representation**: Are our visualizations, summary statistics, and reports designed to honestly represent the underlying data?

All visualizations, summary statistics, and reports that were created in the analysis of the dataset were designed to honestly represent the underlying data. Any figure that was generated represents the dataset. No attempts were made throughout 
the analysis process to alter the figures or statistics in a way that would misrepresent the trends present in the data. 

 - [ ] **C.4 Privacy in analysis**: Have we ensured that data with PII are not used or displayed unless necessary for the analysis?

Data with PII was not used in this dataset. So, not measures were taken to ensure that PII was not used or displayed because it was not present. 

 - [ ] **C.5 Auditability**: Is the process of generating the analysis well documented and reproducible if we discover issues in the future?

The process of generating the analysis of the dataset is present in the Google Colab file that is attached to this Github repository. The analysis and creation of the model is broken down into the steps that 
were taken and is also commented to describe why certain choices were made throughout the analysis of the dataset. The goal with formatting the analysis in this way is that this code could be taken and used with an alternative dataset. 
This way, another researcher or research group could repeat the process with data that they obtained. Because all decisions were documented, it is also possible to locate issues in the code and change
any parts of the model if errors arise in the future. 

## D. Modeling
 - [ ] **D.1 Proxy discrimination**: Have we ensured that the model does not rely on variables or proxies for variables that are unfairly discriminatory?

 In designing the methods of collecting data for this experiment, a variety of different aspects of the coffee were considered so that one variable does not solely dictate the 
 results of the ML model. In doing the pre-processing of the dataset, the goal was to make sure that the model does not only rely on one correlation that would unfairly swing the 
 results of the predicted freshness. Further, no proxy variables were used because only one specific of origin was used, and the roast levels were represented numerically instead of
 categorically with words like "light" and "dark". As the model continues to be develoepd, the goal is to add more species of origin. The researchers recognize that the reigon where
 the coffee beans are grown could act as a proxy variable, and so only quantitive factors that would affect the coffee (temperature, humidity, altitude) will be considered.

 - [ ] **D.2 Fairness across groups**: Have we tested model results for fairness with respect to different affected groups (e.g., tested for disparate error rates)?

The model has not currently been tested for fairness across different groups. The model parameters were chosen and developed from literature searches that spanned decades of research from different countries and research
groups. Because the model has not been beta tested, it is unclear if the model is calibrated in a way that would unfairly discriminate against certain groups of people that will drink the coffee or use the 
model. Going forward, as the model continues into further levels of development, it is important to check with a wide variety of people to see how they interpret or are affected by the model.

 - [ ] **D.3 Metric selection**: Have we considered the effects of optimizing for our defined metrics and considered additional metrics?

Yes, additional metrics are going to be added as this study is continued and more data is collected. The goal is to find more variables that are strongly correlated with time, 
which should make a more accurate model and predict the quality of the coffee in a more complete and thorough manner. 

 - [ ] **D.4 Explainability**: Can we explain in understandable terms a decision the model made in cases where a justification is needed?

All decisions made in the creation of this model have been commented and documented, so all aspects of the model can be justified. The explainations of the model and the 
choices made throughout its development were written in plain English to avoid confusion from any listeners. 

 - [ ] **D.5 Communicate bias**: Have we communicated the shortcomings, limitations, and biases of the model to relevant stakeholders in ways that can be generally understood?

The model only works for Brazilian Cerrado beans and for the two roast levels that have been analyzed so far. This is stated in the app for the ML model, so that any stakeholders can
understand the limitations of the dataset. Further, the accuracy of the model (R2, RMSE, MAE) were documented in the analysis process so that any stakeholders can read through the 
creation of the model and decide if it is accurate enough for their specific use. 

## E. Deployment
 - [ ] **E.1 Redress**: Have we discussed with our organization a plan for response if users are harmed by the results (e.g., how does the data science team evaluate these cases and update analysis and models to prevent future harm)?

As a research team, the goal of this project is to be informative. However, the research team recognizes that the model is not perfectly accurate and is just one of many attempts to quantify the freshness of coffee. After deployment,
the goal is to keep in contact with any roasters or brewers who use the model and check in with how the model has been informing their decisions and if they believe that the model has been working properly. The users' feedback will be 
prioritized. The goal of the ML platform is to make it easier for people to gauge how old their coffee is. If it is not achieving that goal, the model needs to be updated in order to better reflect the needs of the clients who are using 
the platform. 

 - [ ] **E.2 Roll back**: Is there a way to turn off or roll back the model in production if necessary?

The model is hosted on a Hugging Face app, which can be shut down at any point if deemed necessary. It is also possible to update the model while keeping the platform deployed, so any bugs that are found in 
the current version of the model can be corrected. Users will only be able to access the most current version of the ML model, so users will not be able to access a worse version of the model if any updates 
have been made. 

 - [ ] **E.3 Concept drift**: Do we test and monitor for concept drift to ensure the model remains fair over time?

Over time, the model will continuously be trained with newly collected data. The new data will be validated on the new data and any drift from the original accuracy and fairness of the model will be corrected. 
The model will be checked to make sure that the results are as consistant and accurate as possible, even as time passes since initial deployment. 

 - [ ] **E.4 Unintended use**: Have we taken steps to identify and prevent unintended uses and abuse of the model and do we have a plan to monitor these once the model is deployed?

The goal of this model is to create a place where users can be informed of how their coffee ages. Because this model will only be used by local roasters and brewers (at least at initial deployment), it should be 
possible to track the use of the model and make sure that roasters are not using it in a negative way (like trying to harm the sales of another roaster). If the model is being abused, it will be taken down, and 
additional measures will be created to secure the model so that only those with permission can access it. For now, this seems like a step that is not needed, because the model is not being fully deployed or
recommended for use until the dataset is further developed. 

