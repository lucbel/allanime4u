class Seed
  attr_reader :seed
  def initialize
    @seed
  end

  def run
    generate_data
  end

  def generate_data
    10.times do
      scrapper = Scrapper.new
      scrapper.category = "ScrapperType"
      scrapper.description = "I am a description."
      scrapper.save!
      scrapper "Generated scrapper  # #{scrapper.id}"
    end
  end
end

seed = Seed.new
seed.run
