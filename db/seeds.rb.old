# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#db/seeds.rb


class Seed
  attr_reader :seed
  def initialize
    @seed
  end

  def run
    generate_data
  end

  def generate_data
    scrapper = Scrapper.new
    category = ["Imager","videos","links","text"]
    category.each {|c| scrapper.category = c}
    scrapper.save
  end
end


seed = Seed.new
seed.run
