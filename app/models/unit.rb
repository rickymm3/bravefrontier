class Unit < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one :element

  validates :name, presence: true, uniqueness: {case_sensitive: false}

  #has_attached_file :fullpic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "assets/missing.png"
  #validates_attachment_content_type :fullpic, :content_type => /\Aimage\/.*\Z/

  def self.search(search, page, filters = nil)

    if filters
      conditions = []
      filters.each do |filter|
        conditions.push(" element_id = #{filter.to_s}")
      end
      conditions = conditions.join (' or ')
      conditions = conditions + ')'
      if search
        conditions.insert(0, "lower(name) like '%#{search.downcase}%' and (")
      end
    elsif search
      conditions = "lower(name) like '%#{search.downcase}%'"
    else
      conditions = ""
    end
    paginate :per_page => 30, :page => page,
             :conditions => conditions
  end

  # def self.search(search, page, filters)
  # conditions = []
  # if filters
  #    filters.each do |filter|
  #      conditions.push('element_id = '+ filter.to_s)
  #    end
  #    conditions = conditions.join (' or ')
  #    conditions = conditions.insert(0,' and ')
  # end
  # conditions = conditions.insert(0,'lower(name) like ' +"'%"+search.downcase+"%' ")
  # puts conditions
  # paginate :per_page => 30, :page => page,
  #           :conditions => conditions,
  #           :order => 'no'
  # end

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

  def self.mat_avatar (slug)
    s = 'units/avatars/'+slug+'.png'
    Image.check_image(s)
  end

  def self.material(material_no)
    Unit.find_by_no(material_no)
  end

  def self.decorate_material(material_no)
    mat_unit = material(material_no)
    mat_avatar(mat_unit.slug)
  end

  private
  def self.get_filter_query_string(filters)
    @string = '%'
    top = filters.size
    @num = 0
    filters.each do |filter|
      element = Element.find(filter)
      @string = @string + element.name
      unless @num = 0 || @num = top
        @string = @string + 'and'
      end
    end
    @string = 'and element_id equals '+@string + '%'
  end

end
