class SmailsController < ApplicationController
  respond_to :json, :html

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
    if @smail.save
      flash[:notice] = 'Your email message was created successfully.'
      SimpleMailer.simple_email(@smail).deliver
      respond_with(@smail, :status => :created, :location => @smail)
    else
      respond_with(@smail.errors, :status => :unprocessable_entity)
    end
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
