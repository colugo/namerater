class Category
  @@list = ["Action","Animal","Colour","Number","Phonetic","Size"]
  def self.getRandomValue
    @@list.sample
  end

  def self.is_valid?(category)
    @@list.include? category
  end
end
