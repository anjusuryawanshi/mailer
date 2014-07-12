class SmailsController < ApplicationController
  respond_to :json

  def index
    @smails = Smail.all
    respond_with @smails
  end

  def show
    @smail = Smail.find(params[:id])
    respond_with @smail
  end

  def new
    @smail = Smail.new
    respond_with @smail
  end

  def edit
    @smail = Smail.find(params[:id])
    respond_with @smail
  end

  def create
    @smail = Smail.new(params[:mail])
    flash[:notice] = "Your email message was created successfully." if @smail.save
    SimpleMailer.welcome_email.deliver
    respond_with(@smail)
  end

  def update
    @smail = Smail.find(params[:id])
    respond_with @smail
  end

  def destroy
    @smail = Smail.find(params[:id])
    @smail.destroy
    respond_with @smail
  end
end
