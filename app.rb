require 'sinatra'
require 'json'

swifts = [
	"http://i.imgur.com/ErYgU4v.jpg",
	"http://i.imgur.com/zyx6A09.jpg",
	"http://i.imgur.com/HHUkDXp.jpg",
	"http://i.imgur.com/FP1n3hl.jpg",
	"http://i.imgur.com/t49JBGU.jpg",
	"http://i.imgur.com/5ld3osM.jpg",
	"http://i.imgur.com/0FBAwXa.jpg",
	"http://i.imgur.com/bbCbQTJ.jpg",
	"http://i.imgur.com/deAlKMs.jpg",
	"http://i.imgur.com/k7zNRxA.jpg",
	"http://i.imgur.com/P528aOu.jpg",
	"http://i.imgur.com/oeBxwcy.jpg",
	"http://i.imgur.com/Ku7Poil.jpg",
	"http://i.imgur.com/nekh6qf.jpg",
	"http://i.imgur.com/FMuWumV.jpg",
	"http://i.imgur.com/KZSXtCK.jpg",
	"http://i.imgur.com/IjoeqMD.jpg",
	"http://i.imgur.com/G6C0K7V.jpg",
	"http://i.imgur.com/EdnMSCG.gif",
	"http://i.imgur.com/xZN0mSn.jpg",
	"http://i.imgur.com/hJuoS66.jpg",
	"http://i.imgur.com/K36vKvo.jpg",
	"http://i.imgur.com/mPTIB4h.jpg",
]

get '/gallery' do
	swifts.map { |swift| "<img src=#{swift} style=\"width:500px\" />" }.join("<br />")
end

get '/random' do
	content_type :json
	{swift: swifts.sample}.to_json
end

get '/count' do
	content_type :json
	{swift_count: swifts.size}.to_json
end

get '/haters' do
	content_type :json
	{swift: "http://38.media.tumblr.com/c2c64cf946989b9e1428939a8c856aeb/tumblr_naj406yCfe1rm300po1_500.gif"}.to_json
end

get '/' do
	"There be swifts here"
end
