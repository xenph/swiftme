require 'sinatra'
require 'json'

swifts = [
	"http://i.huffpost.com/gen/1856607/thumbs/o-TAYLOR-SWIFT-570.jpg",
	"http://photos.laineygossip.com/lifestyle/taylor-swift-foundation-08dec1402.jpg",
]

get '/random' do
	content_type :json
	{pug: swifts.sample}.to_json
end

get '/count' do
	content_type :json
	{count: swifts.size}.to_json
end

