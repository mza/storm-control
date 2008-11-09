class Build
  
  attr_accessor :name, :build, :status, :date
  
  def initialize(item)
    parse_attributes item.title
    self.date = item.pubDate
  end
  
  def parse_attributes(attributes)
    a = attributes.split(/ /)
    self.name = a[0]
    self.build = a[1]
    self.status = a[3]
  end
  
  def pass?
    if self.status == "success"
      return true
    end
    false
  end
  
  def fail?
    if self.status == "failed"
      return true
    end
    false
  end
  
end