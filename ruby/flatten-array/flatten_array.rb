class FlattenArray
  def self.flatten(array)
    array.flatten.reject(&:nil?)
  end
end
