require_relative 'field'

class WheatField < Field

  def crop_yeild(hectares)
    yeild_per_hectare = 30
    yeild_per_hectare * hectares
  end

end
