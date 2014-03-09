class DoodlesController < ApplicationController
	def create
		imgurl = params[:imgurl]
		img = Base64.decode64(imgurl['data:image/jpg;base64,'.length .. -1])
		@doodle = Doodle.new
		@doodle.save
		@path = "app/assets/images/doodles/" + @doodle.id.to_s + '.jpg'
		@doodle.path = @path
		@doodle.save
		File.open(@doodle.path, 'wb') { |f| f.write(img) }
		redirect_to 'room#index'
	end

	def show
		@doodle = Doodle.find(params[:id])
		send_data open(@doodle.path) { |f| f.read	}
	end
end
