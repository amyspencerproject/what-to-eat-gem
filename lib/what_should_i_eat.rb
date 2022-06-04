# frozen_string_literal: true

require_relative "what_should_i_eat/version"

module WhatShouldIEat
  class Error < StandardError; end
  
  require 'http'
  result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s

  require 'json'
  recipes = JSON.parse(result)

  class Recipe 
    def self.getRecipe
      title = recipes.first['items'].first['label']
      url = recipes.first['items'].first['url']
      puts title
      puts url
    end
  end
end
