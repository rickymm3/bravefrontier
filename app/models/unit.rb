class Unit < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one :element

  #has_attached_file :fullpic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "assets/missing.png"
  #validates_attachment_content_type :fullpic, :content_type => /\Aimage\/.*\Z/

  def self.getpopularunits

  end

  def elements
    if self.element_id
      element = Element.find(element_id)
      'elements/'+element.name+'.png'
    else
      'elements/multi.png'
    end
  end

  def avatar
    'units/avatars/'+self.slug+'.png'
  end

end
