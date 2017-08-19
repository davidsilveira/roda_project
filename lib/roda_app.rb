require "roda"

class RodaApp < Roda
  plugin :static, ["/images", "/css", "/js"], :root=>'public'
  plugin :render
  plugin :head

  route do |r|
    @more = "more_info"

    r.root do
      view("index")
    end

    r.on "saiba-mais" do
      r.is "condutor" do
        view("#{@more}/drivers_info")
      end
      r.is "proprietario" do
        view("#{@more}/owner_info")
      end
    end

  end

end
