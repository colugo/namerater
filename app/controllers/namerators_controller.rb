class NameratorsController < ApplicationController
  MAX_RESULTS = 50
  DEFAULT_RESULTS = 5
  # GET /namerators
  # GET /namerators.json
  def random()

    @config = params[:config].split("/")
    getCount()

    @namerators = []
    (1..@count).each do
      @namerators.push(Result.new(@config))
    end
    render json: @namerators
  end

  def getCount()
    @count = Integer(@config.pop) rescue DEFAULT_RESULTS
    if @count > MAX_RESULTS
       @count = MAX_RESULTS
    end
  end

  # validation?
  #if count > MAX_RESULTS
  #  render json: count, status: :unprocessable_entity
  #  return
  #end

end
