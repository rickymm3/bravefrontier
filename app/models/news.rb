class News < ActiveRecord::Base
  has_one :event
  accepts_nested_attributes_for :event

  attr_accessor :check_event

  def profile
    super || build_event
  end
end
