class Unit < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one :element

  validates :name, presence: true, uniqueness: {case_sensitive: false}

  #has_attached_file :fullpic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "assets/missing.png"
  #validates_attachment_content_type :fullpic, :content_type => /\Aimage\/.*\Z/

  def self.search(search, page)
    paginate :per_page => 30, :page => page,
             :conditions => ['lower(name) like ?', "%#{search}%".downcase],
             :order => 'no'
  end

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

  def full_image
    s = 'units/full/'+self.slug.to_s+'.png'
    Image.check_image(s)
  end

  def avatar
    s = 'units/avatars/'+self.slug.to_s+'.png'
    Image.check_image(s)
  end

end
