# TeamRuby
Repo for TeamRuby ML task


The task required us to create a recommendation engine/system for lucid.blog a blog for created by ex-interns of HNG. We were presented with a database dump of the blog and our task was to recommend articles to users of the blog and suggestions of who to follow.
The recommendation system model was created using the content based filtering.

1)Here is how to test the model created

The model is created using content based filtering which focuses on attributes of items and gives you recommendations based on simailarities between the items.

The pivot table was applied here because it is used to convert the dataframe to matrix form from which we can assess the correlation between a datapoint and another. Hence our recommender system.

Using Cosine similarity which measures the similarity between two vectors in this case posts boy calculating the cosine of the angle between them. Not to bother anyone with the complex mathematical formaula, so simply the model will do the calculation and the closer to one(1) the cosine simalirity is the more similar the items are. 

Not to forget another important algorithm or incredibly complex formula used is the 'term frequency(TF)' which gives us the frequency of words in each document(post) in the corpus. it is simpy the ratio of the number of times a specific word appears in a document compared to the total number of wordsin that document.

Also the 'inverse data frequency(IDF)' was used to calculate the weight of rare words across all the document in the corpus
Combining 'term frequency' and 'inverse data frequency' we have the TF-IDF

2)How model works:
Using the command line "get_recommended_posts('HTML BEGINS HERE')"
The moodel is able to generate or recommend similar posts that have key word 'HTML'

Using all the algorithms above the model created can also recommend 'who to follow' in doing that a function is defined that gets new followers based on their id 

ALSO CHECK
Each content has a specific 'rating' which is mapped to the content so that other contents with similar 'rating' can be recommended

3)How model was tested:
Testing the recommender involves having the test input present in the entire dataset (imagine users being recommended similar posts, after the user click on a particular post, then other recommendations will be provided). Our testing here presumes the user has a post he/she is reading, the system will them recommend posts based on similarity/correlation with the current post.

so without further ado please find the cell "get_recommended_posts('input the post title here please')" and type in a title to get a recommendation.

This model is also able to do something similar to a 'who to follow' function
using "users.loc[users['id'] == 66, 'short_bio'].iloc[0]" to generate a user to follow


Observation: 
The recommendation method is really basic and would have performed extremely well if the provided data was structured as should be, we would have been able to narrow down recommendations to posts with at least 10-15 user ratings.

A lot went in to the data analysis and we discovered that majority of the data were missing (NaN) and there was no other option other than dropping them, by the time we were able to get a well cleaned data, we were left with less than 50 rows of data. Hopefully we can get a more structured data for recommendation.
