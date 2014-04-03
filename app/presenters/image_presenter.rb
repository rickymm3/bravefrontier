class ImagePresenter < ActiveRecord::Base
  def elements(element_id)
    if element_id
      element = Element.find(element_id)
      'elements/'+element.name+'.png'
    else
      'elements/multi.png'
    end
  end

  def full_image(slug)
    s = 'units/full/'+slug+'.png'
    Image.check_image(s)
  end

  def avatar(slug)
    s = 'units/avatars/'+slug+'.png'
    Image.check_image(s)
  end
end
