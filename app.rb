require 'sinatra'
require 'json'

swifts = [
	"http://i.huffpost.com/gen/1856607/thumbs/o-TAYLOR-SWIFT-570.jpg",
	"http://photos.laineygossip.com/lifestyle/taylor-swift-foundation-7dec1402.jpg",
	"http://static.tvgcdn.net/MediaBin/Galleries/Editorial/140818/MTV_VMA_2014/2/smallcrops/vma-taylor-swift1sm.jpg",
	"http://static1.businessinsider.com/image/52790bfd69beddf46041ccc2/taylor-swift-wrote-an-op-ed-in-the-wall-street-journal-and-its-filled-with-fascinating-insights.jpg",
	"http://www.usmagazine.com/uploads/assets/photo_galleries/regular_galleries/2576-mtv-vmas-2014-red-carpet-beauty-breakdown-hair-makeup/photos/1408970942_taylor-swift-zoom.jpg",
	"http://nyppagesix.files.wordpress.com/2013/12/taylor-swift.jpg",
	"http://www.billboard.com/files/styles/promo_650/public/media/taylor-swift-shake-it-off-video-2-2014-billboard-650.jpg",
	"http://static5.businessinsider.com/image/508916636bb3f7775400002d/how-taylor-swift-conquered-the-music-world-by-age-22.jpg",
	"http://cbsradionews.files.wordpress.com/2014/10/taylor_swift_770_1.jpg%3Fw%3D620%26h%3D349%26crop%3D1",
	"http://www.independent.ie/incoming/article30162439.ece/BINARY/483125117.jpg",
	"http://cbsradionews.files.wordpress.com/2014/10/taylor_swift_770_1.jpg%3Fw%3D620%26h%3D349%26crop%3D1",
	"http://blogs-images.forbes.com/jesscollen/files/2014/06/670px-taylor_swift_by_david_shankbone-e1401803550457.jpg",
	"http://a.abcnews.com/images/Entertainment/HT_Taylor_Swift_ml_140818_16x9t_384.jpg",
	"http://i.dailymail.co.uk/i/pix/2014/09/29/1412031442915_Image_galleryImage_125280_Taylor_Swift_seen_.JPG",
	"http://cdn01.cdn.justjaredjr.com/wp-content/uploads/headlines/2014/08/taylor-swift-cheer-outtakes.jpg",
	"http://www.usmagazine.com/uploads/assets/articles/79284-taylor-swift-dresses-up-as-a-winged-unicorn-for-halloween-2014-photo/1414766821_taylor-swift-unicorn-zoom.jpg",
]

get '/random' do
	content_type :json
	{swift: swifts.sample}.to_json
end

get '/count' do
	content_type :json
	{swift_count: swifts.size}.to_json
end

get '/' do
	"There be swifts here"
end
