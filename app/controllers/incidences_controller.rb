class IncidencesController < ApplicationController

def new	
end

def create
#render plain: params[:incidence].inspect 
@incidence = Incidence.new (incidence_params)
@incidence.save
redirect_to @incidence
end

def show
  @incidence = Incidence.find(params[:id])
end


private
def incidence_params
	params.require(:incidence).permit(:num_radicado, :decripcion, :fecha_registro, :fecha_incidente, :adjunto,:estado)
end

end
