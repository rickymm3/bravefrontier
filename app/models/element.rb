class Element < ActiveRecord::Base

  has_many :units

  def self.get_element_class (element_id)
    element = Element.find(element_id)
    'elements-'+element.name.to_s
  end

end
