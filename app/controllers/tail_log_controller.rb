class TailLogController < ApplicationController
  def index
  	@lines = params[:lines] ||= 100
	@stage = (params[:stage] ||= "development") + ".log"
  	@file = "#{Rails.root}/log/#{@stage}"
	@command = "tail -n #{@lines} #{@file}"
	@output = `#{@command}`
    render :text => "<code>#{@output.gsub("\n","<br/>")} </code>"
  end

end
