class HomeController < ApplicationController
  def index
  end

  def shorten
    respond_to do |format|
      required = :input_url
      form_complete = true
      if params.has_key? required and not params[required].blank?
          
          Shortener::ShortenedUrl.generate(params[required], owner: current_user)
          flash.now[:alert] = "URL shortened successfully."
          format.html { redirect_to root_path, notice: "URL shortened successfully." }
          format.json { head :no_content }
        else
          form_complete = false
        end
    end
  end

  def links
    @links = current_user.shortened_urls
  end

end
