class WoofsController < ApplicationController

  def index
    find_all
  end

  def show
    @woof = Woof.find(params[:id])
  end

  def create
    @woof = Woof.new(woof_params)
    if @woof.save
      redirect_to root_path
    else
      find_all
      render :index
    end
  end

  private

    def find_all
      @woofs = Woof.all
    end

    def woof_params
      params.require(:woof).permit(:author, :body)
    end



end
