class WaitersController < ApplicationController
  def index
    @waiters = Waiter.all
  end

  def show
    @waiter = Waiter.find(params[:id])
  end

end
