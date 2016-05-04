class Result
  attr_accessor :hyphens, :spaces, :commas, :parts

  def initialize(categories)
      @parts = Hash.new
      categories.each_with_index do |category, index|
        part = Kernel.const_get(category).getRandomValue
        @parts[index] = part
      end
      @hyphens = @parts.values.join("-")
      @spaces = @parts.values.join(" ")
      @commas = @parts.values.join(",")
  end

end
