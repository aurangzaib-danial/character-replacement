class CharacterReplacer
  attr_accessor :target, :replacement, :string

  include ActiveModel::Validations

  validates_presence_of :target, :replacement, :string

  def initialize(attributes = {}) 
    attributes.each do |k, v|
      send("#{k}=", v)
    end
  end

  def result
    string.gsub(target, replacement)
  end

end