require 'resource_set'

class HTTPBinResource < ResourceSet::Resource
  resources do
    get '/ip' => :ip
    get '/status/:code' => :status
  end
end

conn = Faraday.new(url: 'http://httpbin.org')
resource = HTTPBinResource.new(connection: conn)

puts resource.ip
puts
puts resource.status(code: 418)
