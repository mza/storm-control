module ApplicationHelper
  
  def build_class(build)
    if build.pass? 
      "pass"
    else
      "fail"
    end
  end
  
end
