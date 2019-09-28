# TeamRuby
Repo for TeamRuby ML task


The task required us to create a recommendation engine/system for lucid.blog a blog for created by ex-interns of HNG. We were presented with a database dump of the blog and our task was to recommend articles to users of the blog and suggestions of who to follow.
The recommendation system model was created using the content based filtering

Here is how to test the model created

The model is created using content based filtering which focuses on attributes of items and gives you recommendations based on simailarities between the items

The pivot table was applied here because it is used to convert the dataframe to matrix form from which we can assess the correlation between a datapoint and another. Hence our recommender system

How model works 
Each content has a specific 'rating' which is mapped to the content so that other contents with similar 'rating' can be recommended

How model was tested
Testing the recommender involves having the test input present in the entire dataset (imagine users being recommended similar posts, after the user click on a particular post, then other recommendations will be provided). Our testing here presumes the user has a post he/she is reading, the system will them recommend posts based on similarity/correlation with the current post.


Observation: The recommendation method is really basic and would have performed extremely well if the provided data was structured as should be, we would have been able to narrow down recommendations to posts with at least 10-15 user ratings.

A lot went in to the data analysis and we discovered that majority of the data were missing (NaN) and there was no other option other than dropping them, by the time we were able to get a well cleaned data, we were left with less than 50 rows of data. Hopefully we can get a more structured data for recommendation.
