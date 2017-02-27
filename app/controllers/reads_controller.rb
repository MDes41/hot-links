class ReadsController < ApplicationController
  def create
    read = Read.find_or_create_by(url: params[:url])
    read.count += 1
    read.save
    redirect_to reads_path
  end

  def index
    @reads = Read.all
  end


  private
  def reads_params
    params.permit(:url)
  end
end