require "roda"
 
class RodaApp < Roda
	plugin :static, ["/images", "/css", "/js"]
  plugin :render
  plugin :head

  route do |r|
  	@more = "more_info"

    r.root do
      view("index")
    end
   
    r.get "drivers_info" do
    	view("#{@more}/drivers_info")
    end

    r.get "owner_info" do
    	view("#{@more}/owner_info")
    end

  end
end