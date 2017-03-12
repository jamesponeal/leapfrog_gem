require 'rubygems'
require 'httparty'

module Leapfrog
  class User
    include HTTParty
    # base_uri "http://echo.jsontest.com/"

    attr_reader :name, :income, :zipcode, :age

    def initialize(name, income, zipcode, age)
      @name = name
      @income = income
      @zipcode = zipcode
      @age = age
    end

    def get_ranking(propensity, ranking)
      uri = "http://echo.jsontest.com/propensity/#{propensity}/ranking/#{ranking}"
      response = self.class.get(uri)
      response.parsed_response
    end

  end
end

