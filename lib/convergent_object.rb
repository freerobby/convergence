require 'celluloid'

class ConvergentObject
  include Celluloid

  attr_accessor :key, :subscribers

  def initialize(_key, _data = nil)
    key = _key
    subscribers = []
    @data = _data
  end

  def data=(_val)
    @data = _val
    query
  end

  def query
    data
  end
end
