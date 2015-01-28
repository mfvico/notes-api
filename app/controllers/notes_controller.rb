class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    note_params = params.require(:note).permit(:title, :body)
    @note = Note.new(note_params)
    @note.save
    redirect_to notes_path
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  def update
    @note = Note.find(params[:id])
    note_params = params.require(:note).permit(:title, :body)
    @note.update(note_params)
    head :no_content
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    head :no_content
  end

end
