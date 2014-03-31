class User < ActiveRecord::Base

  #before_create :set_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  accepts_nested_attributes_for :profile

  def profile
    super || build_profile
  end

  private

  #def set_default_role
  #  self.role ||= Role.find_by_name('user')
  #end

end
