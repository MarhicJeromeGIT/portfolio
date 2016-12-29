class StaticPagesController < ApplicationController

  def index
  end
  
  def stocks_jpg
    # Create image of my portoflio websites: Stocks
    kit = IMGKit.new('https://stocks.bandanatech.org')
    send_data(kit.to_jpg, :type => "image/jpeg", :disposition => 'inline') 
  end 
  
  def credits
  end

end
