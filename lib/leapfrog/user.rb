require 'rubygems'
require 'httparty'

module Leapfrog
  class User
    include HTTParty

    attr_reader :name, :income, :zipcode, :age

    def initialize(name, income, zipcode, age)
      @name = name
      @income = income
      @zipcode = zipcode
      @age = age
    end

    def get_ranking(url)
      # if this were actually using income, zipcode, and age to obtain a ranking, they could be accessed here from user's parameters and passed along to the url via a string such as: income=50000&amp;zipcode=60201&amp;age=35
      response = HTTParty.get(url, timeout: 10)
      if response.code == 200
        response.parsed_response
      else
        "ERROR #{response.code}"
      end
    end

  end
end

