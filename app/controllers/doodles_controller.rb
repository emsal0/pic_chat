class DoodlesController < ApplicationController
	def create
		imgurl = params[:imgurl]
		img = Base64.decode(imgurl['data:image/jpg;base64,'.length .. -1])
		@doodle = Doodle.new
		@doodle.save
		@id = @doodle.id
		@doodle.path = '#{Rails.root}/assets/images/doodles/#{@id}.jpg'
		@doodle.save
		File.open(@doodle.path, 'wb') { |f| f.write(img) }
	end

	def show
		@doodle = Doodle.find(params[:id])
		send_data open(@doodle.path) { |f| f.read	}
	end
end
