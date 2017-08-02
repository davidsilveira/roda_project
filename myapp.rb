require "roda"
 
class RodaApp < Roda
  route do |r|
    r.root do
      "Initial Page"
    end
  end
end