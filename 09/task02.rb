class Car
  def get_km(phrase)
    puts find_km(phrase)
  end

  private
  def find_km(phrase)
    /\d{2}km\/h/.match(phrase)
  end
end
car = Car.new
puts car.get_km("asdasdasdas 80km/h")
