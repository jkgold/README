class QuestionsController < ApplicationController
  def index
    @Questions = Questions.all
  end

  def new
    @Questions = Questions.find(params[:id])
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
