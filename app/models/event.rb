class Event < ActiveRecord::Base
  belongs_to :news

  #delegate :username, to: :profile, prefix: true, allow_nil: true

  def self.active_events
    Event.where("'end_date' > '#{Time.now.to_s}'")
  end
end
