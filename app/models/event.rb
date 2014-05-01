class Event < ActiveRecord::Base
  belongs_to :news

  #delegate :username, to: :profile, prefix: true, allow_nil: true

end
