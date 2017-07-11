require_relative 'field'

class CornField < Field

  def initialize(hectares)
    @hectares = hectares
  end

  def crop_yeild
    yeild_per_hectare = 20
    yeild_per_hectare * hectares
  end

end
