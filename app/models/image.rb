class Image < ActiveRecord::Base

  @default_missing = 'original/missing.png'

  def self.check_image(s)
    if Rails.application.assets.find_asset s
      s
    else
      @default_missing
    end
  end

end
