class ResultsController < ApplicationController
  include ApplicationHelper 
  before_action :logged_in?
  def new
    @result = Result.new
  end

  def create
    @get_result = Result.find_by(full_string: params[:full_string], user_id: session[:user_id])
    if @get_result
      redirect_to result_path(params[:full_string])
      return
    end

    @new_result = Result.new(full_string: params[:full_string], user_id: session[:user_id])
      if @new_result.save
        p @new_result.errors.full_messages
        redirect_to result_path(params[:full_string])
      else
        p @new_result.errors.full_messages
        render :action => "new"
      end
  end

  def show 
    @result = Result.find_by(full_string: params[:string])
    if !@result
      redirect_to new_result_path,  notice: 'This string is not solved yet'
    end
  end
end
