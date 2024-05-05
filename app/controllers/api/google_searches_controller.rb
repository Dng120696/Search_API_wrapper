class Api::GoogleSearchesController < ApplicationController
  before_action :client

  def images
    params = {
      "engine": "google_images",
          "q": "apple"
    }
    @search_images = client.google_images(params)[:suggestions]

    render json: @search_images
  end

  def videos
    params = {
      "engine": "google_videos",
          "q": "scraping guides",
    }
    @search_videos = client.google_images(params)[:videos]

    render json: @search_videos
  end

  def news
    params = {
        "engine": "google_news",
            "q": "Jeff Bezos news",
    "location": "New York,United States",
    }
    @search_news = client.google_images(params)[:organic_results]

    render json: @search_news
  end

  def news
    params = {
        "engine": "google_news",
            "q": "Jeff Bezos news",
    "location": "New York,United States",
    }
    @search_news = client.google_images(params)[:organic_results]

    render json: @search_news
  end

  def maps
    params = {
      engine: "google_maps_place",
      place_id: "ChIJ23XGwU7diDMRtHESskqUCjc",
    }
    @search_maps = client.google_images(params)[:place_result]

    render json: @search_maps
  end

  private

  def client
    client ||= SearchAPI::V1::Client.new
  end
end
