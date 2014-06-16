class Image < ActiveRecord::Base

  @default_missing = 'original/missing.png'

  def self.check_image(filename, folder=nil , type=nil)

    if Rails.application.assets.find_asset filename
      filename
    else
      @default_missing
    end
  end

end
