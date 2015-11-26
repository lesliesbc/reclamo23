class ReclaInstitucionsController < ApplicationController
  before_action :set_recla_institucion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recla_institucions = ReclaInstitucion.all
    respond_with(@recla_institucions)
  end

  def show
    respond_with(@recla_institucion)
  end

  def new
    @recla_institucion = ReclaInstitucion.new
    respond_with(@recla_institucion)
  end

  def edit
  end

  def create
    @recla_institucion = ReclaInstitucion.new(recla_institucion_params)
    @recla_institucion.save
    respond_with(@recla_institucion)
  end

  def update
    @recla_institucion.update(recla_institucion_params)
    respond_with(@recla_institucion)
  end

  def destroy
    @recla_institucion.destroy
    respond_with(@recla_institucion)
  end

  private
    def set_recla_institucion
      @recla_institucion = ReclaInstitucion.find(params[:id])
    end

    def recla_institucion_params
      params.require(:recla_institucion).permit(:recla_id, :institucion_id)
    end
end
