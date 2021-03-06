#thanks to: http://sebastien.saunier.me/blog/2015/11/04/retrieve-a-random-record-in-a-rails-application.html

module Randomable
  extend ActiveSupport::Concern

  class_methods do
    def random(the_count = 1)
      records = offset(rand(count - the_count + 1)).limit(the_count)
      the_count == 1 ? records.first : records
    end

    def getRandomValue
      random().name
    end
  end
end
