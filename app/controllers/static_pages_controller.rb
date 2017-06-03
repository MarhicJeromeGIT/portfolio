class StaticPagesController < ApplicationController

  def index
  end
  
  def img_jpg
    kit = IMGKit.new(params[:url])
    send_data(kit.to_jpg, :type => "image/jpeg", :disposition => 'inline') 
  end

  def credits
  end

  def contact
    ContactMailer.contact_email(name: params[:name], email: params[:email], phone: params[:phone], content: params[:text]).deliver_now
    respond_to do |format|
      format.js { flash[:success] = I18n.t 'contact_success' }
    end
  end
end
