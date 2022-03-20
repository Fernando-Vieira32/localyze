class WelcomeController < ApplicationController
  def index
    response = DocumentValidator.call(params[:texto])
    render json: response
  end
end
