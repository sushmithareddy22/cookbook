require 'webrick'

server = WEBrick::HTTPServer.new(:Port => ARGV.first)
server.mount_proc '/' do |req, res|
  puts req.body
end

trap 'INT' do
  server.shutdown
end
server.start



#ruby webhook.rb 8000
#http://my.host:8000/
