class Slot
  attr_reader :position, :contents, :cost, :quantity

  def initialize(data)
    @position = data["position"]
    @cost = data["cost"]
    @quantity = data["capacity"]
    @contents = data["contents"]
  end

end
