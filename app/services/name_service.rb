require 'brained'
require 'honeycomb-beeline'

class NameService
  def new?(name)

    brained_name = Brained::Name.new(name)

    if Name.exists?(name: brained_name.to_s)
      Honeycomb.add_field('NameService.exists', brained_name)
      false
    else
      Honeycomb.add_field('NameService.new', brained_name)
      Name.create(name: brained_name.to_s).save
      true
    end
  end

  def default_name
    'Cowpoke'
  end
end
