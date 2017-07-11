require_relative 'field'

class WheatField < Field

  def initialize(hectares)
    @hectares = hectares
  end

  def crop_yeild
    yeild_per_hectare = 30
    yeild_per_hectare * hectares
  end

end
