class StaticPagesController < ApplicationController

  def index
  end
  
  def stocks_jpg
    # Create image of my portfolio websites: Stocks
    kit = IMGKit.new('https://stocks.bandanatech.org')
    send_data(kit.to_jpg, :type => "image/jpeg", :disposition => 'inline') 
  end

  def blog_jpg
    # Create image of my blog (github pages) 
    kit = IMGKit.new('https://marhicjeromegit.github.io')
    send_data(kit.to_jpg, :type => "image/jpeg", :disposition => 'inline') 
  end

  def iknow_jpg
     # Create image of my blog (github pages) 
    kit = IMGKit.new('https://petstore.swagger.io/?url=http://iknow.bandanatech.org/')
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
