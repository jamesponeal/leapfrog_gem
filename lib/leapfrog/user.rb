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

    def get_ranking(propensity, ranking)
      uri = "http://echo.jsontest.com/propensity/#{propensity}/ranking/#{ranking}"
      response = HTTParty.get(uri, timeout: 10)
      if response.code == 200
        response.parsed_response
      else
        "ERROR #{response.code}"
      end
    end

  end
end

