require 'brained'

class NameService
  def new?(name)

    brained_name = Brained::Name.new(name)

    if Name.exists?(name: brained_name.to_s)
      false
    else
      Name.create(name: brained_name.to_s).save
      true
    end
    #
    # is_named = Name.find_by(name: name)
    # puts
    # puts is_named.inspect
    # puts
    # puts is_named.present?
    # puts is_named.
    #
    # is_named.present? ? true : false
  end

  def default_name
    'Cowpoke'
  end
end
