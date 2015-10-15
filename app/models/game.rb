class Game < ActiveRecord::Base
  def avg_length_hour
    avg_length_min / 60.0
  end
end
