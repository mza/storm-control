class Build
  
  attr_accessor :name, :build, :status
  
  def initialize(item)
    parse_attributes item.title
  end
  
  def parse_attributes(attributes)
    a = attributes.split(/ /)
    self.name = a[0]
    self.build = a[1]
    self.status = a[3]
  end
  
end