class SmailsController < ApplicationController

  respond_to :json

  def index
    @smails = Smail.all
    respond_with @smails
  end

  def show
    @smails = Smail.find(params[:id])
    respond_with @smails
  end

  def new
    @smails = Smail.new
    respond_with @smails
  end

  def edit
    @smails = Smail.find(params[:id])
    respond_with @smails
  end

  def create
    @smails = Smail.new(params[:mail])
    flash[:notice] = "Your email message was created successfully." if @smails.save
    SimpleMailer.welcome_email.deliver
    respond_with(@smails)
  end

  def update
    @smails = Smail.find(params[:id])
    respond_with @smails
  end

  def destroy
    @smails = Smail.find(params[:id])
    @smails.destroy
    respond_with @smails
  end
end
