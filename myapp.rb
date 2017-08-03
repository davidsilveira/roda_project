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
   

    r.get "saiba-mais/condutor" do
    	view("#{@more}/drivers_info")
    end

    r.get "saiba-mais/proprietario" do
    	view("#{@more}/owner_info")
    end


  end
end