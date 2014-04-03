class BraveBurst < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  def elements
    if self.element_id
      element = Element.find(element_id)
      'elements/'+element.name+'.png'
    else
      'elements/multi.png'
    end
  end

end
