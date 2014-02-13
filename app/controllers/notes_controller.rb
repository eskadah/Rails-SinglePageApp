class NotesController < ApplicationController
  def new
   @notes = Note.all
   @note = Note.new
  end

def create
  @note = Note.new(params[:note])
  if @note.save
    respond_to do |format|
      format.html
      format.js #needs create.js.erb template
    end
  else
    respond_to do |format|
      format.html
      format.js { render 'failed_save.js.erb'} #TODO: failed_save template
    end
  end
end
end
