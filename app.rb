require 'sinatra'
require 'json'

swifts = [
	"http://i.imgur.com/ErYgU4v.jpg",
	"http://i.imgur.com/zyx6A09.jpg",
	"http://i.imgur.com/HHUkDXp.jpg",
	"http://i.imgur.com/FP1n3hl.jpg",
	"http://i.imgur.com/t49JBGU.jpg",
	"http://i.imgur.com/0FBAwXa.jpg",
	"http://i.imgur.com/deAlKMs.jpg",
	"http://i.imgur.com/k7zNRxA.jpg",
	"http://i.imgur.com/P528aOu.jpg",
	"http://i.imgur.com/oeBxwcy.jpg",
	"http://i.imgur.com/Ku7Poil.jpg",
	"http://i.imgur.com/FMuWumV.jpg",
	"http://i.imgur.com/KZSXtCK.jpg",
	"http://i.imgur.com/G6C0K7V.jpg",
	"http://i.imgur.com/EdnMSCG.gif",
	"http://i.imgur.com/xZN0mSn.jpg",
	"http://i.imgur.com/hJuoS66.jpg",
	"http://i.imgur.com/K36vKvo.jpg",
	"http://i.imgur.com/mPTIB4h.jpg",
	"http://i.imgur.com/iDcft9g.jpg",
	"http://i.imgur.com/dSXqGMA.jpg",
	"http://i.imgur.com/ONQdojh.jpg",
	"http://i.imgur.com/BPsUdMN.jpg",
	"http://i.imgur.com/gYniO4S.jpg",
	"http://i.imgur.com/jBOjBNH.png",
	"http://i.imgur.com/LXTxIRC.jpg",
	"http://i.imgur.com/QWrEsfY.jpg",
	"http://i.imgur.com/nCjix4t.jpg",
	"http://i.imgur.com/mPmIDSX.jpg",
	"http://i.imgur.com/c4PTMVq.jpg",
	"http://i.imgur.com/FjuaSMm.jpg",
	"http://i.imgur.com/pYpTpFr.png",
	"http://i.imgur.com/fTMVJWF.png",
	"http://i.imgur.com/YE1Rvke.gif",
	"http://i.imgur.com/qgmmFKw.jpg",
	"http://i.imgur.com/BnOI4Pv.jpg",
	"http://i.imgur.com/RWtHGOP.jpg",
	"http://i.imgur.com/Syy0kPV.jpg",
	"http://i.imgur.com/La0Tb26.jpg",
	"http://i.imgur.com/WFIYa9z.jpg",
	"http://i.imgur.com/iNUEIpT.jpg",
	"http://i.imgur.com/MyGi1lK.jpg",
	"http://i.imgur.com/Yunhf8W.jpg",
	"http://i.imgur.com/B8BhVtV.jpg",
	"http://i.imgur.com/8s9YsqP.jpg",
	"http://i.imgur.com/cTnFs63.jpg",
	
	
]

get '/gallery' do
	@swifts = swifts
	erb :gallery
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
