class NameratorsController < ApplicationController
  MAX_RESULTS = 50
  DEFAULT_RESULTS = 5
  # GET /namerators
  # GET /namerators.json
  def random()

    @config = params[:config].split("/")
    getCount()
    validateCategories() or return

    @namerators = []
    (1..@count).each do
      @namerators.push(Result.new(@config))
    end
    render json: @namerators
  end

  def validateCategories()
    if(@config.size > 5 )
      render json: "Maximum of 5 categories allowed", status: :unprocessable_entity and return
    end
    @config.each{ |category| verifyCategory(category) or return }
    return true
  end

  def verifyCategory(category)
    return true if(category == "Category")
    if Category.find_by(name: category) == nil
      render json: "No category: #{category}", status: :unprocessable_entity and return
    end
    return true
  end

  def getCount()
    if hasCount()
      @count = Integer(@config.pop) rescue DEFAULT_RESULTS
      if @count > MAX_RESULTS
         @count = MAX_RESULTS
      end
    else
      @count = DEFAULT_RESULTS
    end
  end

  def hasCount()
    count = Integer(@config.last) rescue false
    if count == false
      return false
    end
    true
  end

end
