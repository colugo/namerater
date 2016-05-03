class NameratorsController < ApplicationController
  MAX_RESULTS = 50
  # GET /namerators
  # GET /namerators.json
  def random(count = 5)


    attemptedCount = Integer(count) rescue MAX_RESULTS + 1

    if attemptedCount > MAX_RESULTS
      render json: count, status: :unprocessable_entity
      return
    end

    @namerators = []
    (1..attemptedCount).each do
      @namerators.push(Name.new)
    end
    render json: @namerators
  end

  def randomCount()
    random(params[:count])
  end

end
