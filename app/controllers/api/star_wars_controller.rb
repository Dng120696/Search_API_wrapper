class Api::StarWarsController < ApplicationController
  before_action :client

  def films
    @films = client.films[:results]
    render json: @films
  end

  def get_film
    id = params[:id]
    @get_film = client.get_film(id)
    render json: @get_film
  end

  def people
    @people = client.people[:results]
    render json: @people
  end

  def get_person
    id = params[:id]
    @get_person = client.get_person(id)
    render json: @get_person
  end


  def starships
    @starships = client.starships[:results]
    render json: @starships
  end

  def species
    @species = client.species[:results]
    render json: @species
  end

  def vehicles
    @vehicles = client.vehicles[:results]
    render json: @vehicles
  end

  def planets
    @planets = client.planets[:results]
    render json: @planets
  end

  private

  def client
    @client ||= StarwarsAPI::V1::Client.new
  end
end
