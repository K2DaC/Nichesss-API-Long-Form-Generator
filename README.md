# Nichesss-API-Long-Form-Generator
Generate 1 to 100 (or more) ±1000 words blog posts in just a few seconds. (1 Blog posts will "cost" 8 Credits) - So be carefull.

## Step 1
Create a new template in Nichesss by going to https://nichesss.com/home/documents and clicking "New Document". 
Enter a name and description and use "BLANK" for the template.

## Step 2
Open the new template and copy and past the content of Nichesss_template.txt from this repository into your template. 
Save it.

## Step 3
Either clone this repository or copy and past the content of travel_api_example.rb to a local file. 

## Step 4
Go back to your template in Nichesss and check the URL in your browser. 
The URL should be something like https://nichesss.com/home/documents/8HzgIcv6p 
Copy the random string at the end of the URL (In this example it's "8HzgIcv6p")

## Step 5
Go back to your local copy of travel_api_example.rb and replace the text ```TEMPLATE_ID = "8HzgIcv6p"``` to match your template ID.  

## Step 6
Goto https://nichesss.com/home/api and press the button with the eye-icon. Copy your API KEY.
Go back to your local copy of travel_api_example.rb and replace the text ```API_KEY = "CHANGE-ME-TO-YOIR-API-KEY"``` with your own API Key (e.g. ```API_KEY = "lsjdfh3213412"``` )

## Step 7
You can run the script using ```ruby travel_api_example.rb``` and it will create 2 ±1000 word blog posts for you. One about Portland and one about Orlando.
You can change the values in Line 20 ``` BLOG_POST_TOPICS = ["Portland", "Orlando"] ``` and add as many other travel destinations as you want.

You can also change the outlines.

The current outlines are 
```OUTLINE_1 = "Overview of ${BLOG_POST_TOPIC}'s top attractions."
OUTLINE_2 = "Where to eat in ${BLOG_POST_TOPIC} as a tourist."
OUTLINE_3 = "Exciting outdoor activities to enjoy all year round in ${BLOG_POST_TOPIC}."
OUTLINE_4 = "Best nightlife destinations in ${BLOG_POST_TOPIC}."
OUTLINE_5 = "Where to stay in ${BLOG_POST_TOPIC} as a tourist."
OUTLINE_6 = "Watch outs and things to avoid in ${BLOG_POST_TOPIC}."
```

So they are optimized for travel blog posts.

Let's say you want to write about electrical vehicles. 

Change OUTLINE_1 to
```OUTLINE_1 = "Overview of features and performance of the ${BLOG_POST_TOPIC}."```


Change OUTLINE_2 to
```OUTLINE_2 = "Assessments of battery life and range of the ${BLOG_POST_TOPIC}."```

and so on. (All 6 Outlines - Keep them generic - So it fits for all electrical vehicles.

Now replace the values in Line 20 ``` BLOG_POST_TOPICS = ["Portland", "Orlando"] ```
to ``` BLOG_POST_TOPICS = ["BMW i3", "Tesla Model 3", "Volkswagen ID.4", "Tesla Model Y"] ```
and this will generate 4 1000 word blog posts about these cars, discussing the outlines like features, performance and battery life and range...



