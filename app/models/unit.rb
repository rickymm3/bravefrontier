class Unit < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  #has_attached_file :fullpic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "assets/missing.png"
  #validates_attachment_content_type :fullpic, :content_type => /\Aimage\/.*\Z/

  def self.getpopularunits

  end

end
