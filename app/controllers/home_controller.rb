class HomeController < ApplicationController
  def index
  end

  def shorten
    respond_to do |format|
      required = :input_url
      form_complete = true
      if params.has_key? required and not params[required].blank?
        shortened_url = Shortener::ShortenedUrl.generate(params[required], owner: current_user)
        flash.now[:notice] = "URL shortened successfully."
        format.html { redirect_to links_path }
        format.json { head :no_content }
      else
        form_complete = false
      end
    end
  end
  
  def links
    # byebug
    @base_url = "#{request.base_url}/shortener/"
    @links = current_user.shortened_urls
  end

end
