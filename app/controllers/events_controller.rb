class EventsController < ApplicationController
  before_action :require_user, only: [:index, :show, :new]

  def new
  end

  def index
  end

  def show
  end
end
