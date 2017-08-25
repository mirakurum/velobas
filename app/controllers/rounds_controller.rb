class RoundsController < ApplicationController
  def index
    @rounds = Round.all
  end

  def new
    @round = Round.new
  end

  def edit
    @round = Round.find(params[:id])
  end

  def create
    @round = Round.new(round_params)
    if @round.save
      redirect_to rounds_path
    else
      render :new
    end
  end

  def update
    @round = Round.find(params[:id])
    if @round.update(round_params)
      redirect_to rounds_path
    else
      render :edit
    end
  end

  def destroy
    @round = Round.find(params[:id])
    @round.destroy
    redirect_to rounds_path
  end

  private

  def round_params
    params.require(:round).permit(:start, :end, :place,
      users_and_rounds_attributes: [:id, :user_id, :score_after30,
                                   :score_before30, :_destroy,
        user_attributes: [:id, :_destroy, :name]])
  end
end
