require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative '../lib/fancy_dance.rb'
class Kid
    extend MetaDancing
    include Dance

  attr_accessor :name

  def initialize(name)
    @name = name
  end
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end