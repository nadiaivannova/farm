require_relative 'field'

class CornField < Field

  def crop_yeild(hectares)
    yeild_per_hectare = 20
    yeild_per_hectare * hectares
  end

end
