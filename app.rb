require 'sinatra'
require 'json'

swifts = [
	"http://i.imgur.com/ZvSAGk2.jpg",
	"http://i.imgur.com/jt9EQ0D.jpg",
	"http://i.imgur.com/6i9mDn0.jpg",
	"http://i.imgur.com/JEq4ADD.jpg",
	"http://i.imgur.com/k8HOgCq.jpg",
	"http://i.imgur.com/DT7IMYI.jpg",
	"http://i.imgur.com/JOMJVxj.jpg",
	"http://i.imgur.com/ttNwXON.jpg",
	"http://i.imgur.com/Ozwobl7.jpg",
	"http://i.imgur.com/emllNZj.jpg",
	"http://i.imgur.com/w1PsvYS.jpg",
	"http://i.imgur.com/aJqf6IR.jpg",
	"http://i.imgur.com/gT5vZmq.jpg",
	"http://i.imgur.com/1bG4RSk.jpg",
	"http://i.imgur.com/EjCyvmk.jpg",
	"http://i.imgur.com/kkueDyN.jpg",
	"http://i.imgur.com/3SWbhWG.jpg",
	"http://i.imgur.com/30wDAWw.jpg",
	"http://i.imgur.com/cH5u1Dg.jpg",
	"http://i.imgur.com/QmlFp0Z.jpg",
	"http://i.imgur.com/QtHjZ2b.jpg",
	"http://i.imgur.com/PjoiyME.jpg",
	"http://i.imgur.com/i4jihzE.jpg",
	"http://i.imgur.com/B9sRfM3.jpg",
	"http://i.imgur.com/ojAr5cD.jpg",
	"http://i.imgur.com/EWnIC1X.jpg",
	"http://i.imgur.com/l9lF8ca.jpg",
	"http://i.imgur.com/Eg2VVbl.jpg",
	"http://i.imgur.com/4yqSEnI.jpg",
	"http://i.imgur.com/DZD9VCY.jpg",
	"http://i.imgur.com/qT1RPAT.jpg",
	"http://i.imgur.com/bV070UJ.jpg",
	"http://i.imgur.com/ewzNUSB.jpg",
	"http://i.imgur.com/ToRQEJL.jpg",
	"http://i.imgur.com/P8sqLuX.jpg",
	"http://i.imgur.com/CWMDuci.jpg",
	"http://i.imgur.com/T1RdDK1.jpg",
	"http://i.imgur.com/QRZlWoL.jpg",
	"http://i.imgur.com/zUasjgd.jpg",
	"http://i.imgur.com/Q6tcsp6.jpg",
	"http://i.imgur.com/SzETXg5.jpg",
	"http://i.imgur.com/zVlN3q8.jpg",
	"http://i.imgur.com/VDtm7iI.jpg",
	"http://i.imgur.com/vPxpB0O.jpg",
	"http://i.imgur.com/h7o0N56.jpg",
	"http://i.imgur.com/Pm0o8fk.jpg",
	"http://i.imgur.com/KXnO2aa.jpg",
	"http://i.imgur.com/DJQcXCa.jpg",
	"http://i.imgur.com/2UMa0CE.jpg",
	"http://i.imgur.com/M8t3ibL.jpg",
	"http://i.imgur.com/kRhx9OQ.jpg",
	"http://i.imgur.com/zKqbVGR.jpg",
	"http://i.imgur.com/KjICyCT.jpg",
	"http://i.imgur.com/lcSvHul.jpg",
	"http://i.imgur.com/efRNHXP.jpg",
	"http://i.imgur.com/tK5HdX0.jpg",
	"http://i.imgur.com/ZSf2Qbk.jpg",
	"http://i.imgur.com/Kr82LEd.jpg",
	"http://i.imgur.com/vPISasa.jpg",
	"http://i.imgur.com/MHzyKI1.jpg",
	"http://i.imgur.com/WB24ITK.jpg",
	"http://i.imgur.com/Z9Em2sz.jpg",
	"http://i.imgur.com/m5w6Wrt.jpg",
	"http://i.imgur.com/jNQiwDI.jpg",
	"http://i.imgur.com/ECkIA8w.jpg",
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
