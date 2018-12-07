require './slot.rb'
require 'pry'

class Machine
  attr_accessor :slots

  def initialize()
    @slots = []
  end

end
