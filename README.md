# Search APIs Wrapper

This Rails-based API wrapper facilitates data retrieval from [Search APIs](https://www.searchapi.io/), streamlining the integration of Search APIs into Ruby applications.

**Note:** This wrapper leverages the [faraday](https://github.com/lostisland/faraday) gem for making HTTP requests and interaction with Search APIs.

## Endpoints used

* **GET /search?api_key=YOUR_API_KEY&engine=google_images&q=IMAGE_NAME**
  - Retrieves a list of all images and and link from the third-party API

* **GET /search?api_key=YOUR_API_KEY&engine=google_videos&q=VIDEOS_NAME**
  - Retrieves a list of videos links and the title of video from the third-party API.

* **GET /search?api_key=YOUR_API_KEY&engine=google_news&location=NEWS_LOCATION&q=NEWS_NAME**
  - Retrieves a list of news articles for that person from the third-party API.

* **GET /search?api_key=YOUR_API_KEY&engine=google_maps_place&place_id=YOUR_PLACE_ID**
  - Retrieves a information of map locations  from the third-party API.


## Documentation
  For more information about methods and parameters available, you may refer to the following: 
 
- **Public APIs website:** [https://publicapis.io/search-api](https://publicapis.io/search-api)
- **Search APIs Documentation:** [https://www.searchapi.io/](https://www.searchapi.io/)

