class ResumeController < ApplicationController
  def resume
    respond_to do |format|
      format.html
      format.pdf do
        render layout: "resumepdf.html", 
               pdf: "marhic_jerome_resume",
               show_as_html: params.key?('debug')
      end
    end
  end
end
