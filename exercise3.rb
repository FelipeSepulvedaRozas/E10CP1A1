class Vehicle
  def initialize(model, year,start)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class car  < Vehicle

end