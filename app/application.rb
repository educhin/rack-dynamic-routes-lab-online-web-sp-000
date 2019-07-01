class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      resp.write "Do something"
    else
      resp.write "Path Not Found"
      resp.status = 404
    end
    resp.finsh
  end
end
