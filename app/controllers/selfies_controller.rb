class SelfiesController < ApplicationController
	skip_before_action :verify_authenticity_token


	def index
		@selfies = Selfy.all
	end


	def show
		@selfy = Selfy.find(params[:id])
	end


	def inbound

		if !params['attachment1'].nil? and params['attachment1'].content_type == "image/jpeg"
				
			tempselfie = params['attachment1'].tempfile.read
			sid = Random.new
			felfie = File.new("public/selfies/buscemi-" + sid.rand(9999).to_s + ".jpg", "w+")
			File.open(felfie, 'wb') {|wr| wr.write(tempselfie) }
			selfiepath = felfie.to_path.to_s.split('/').drop(1).join('/')

			Selfy.create!({ pic: selfiepath, email: params['from'] })

			render :json => { "message" => "OK" }, :status => 200

		else
		
			render :json => { "message" => "NOPE." }, :status => 200

			puts "\n\n ** REJECTED. ** \n\n"	

		end

	end




	private

		def set_selfy
			@selfy = Selfy.find(params[:id])
		end

		def selfy_params
			params.require(:selfy).permit(:pic, :email)
		end
end
