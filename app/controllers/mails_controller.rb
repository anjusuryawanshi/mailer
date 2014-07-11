class MailsController < ApplicationController

  respond_to :json

  def index
    @mails = Mail.all
    respond_with @mails
  end

  def show
    @mail = Mail.find(params[:id])
    respond_with @mail
  end

  def new
    @mail = Mail.new
    respond_with @mail
  end

  def edit
    @mail = Mail.find(params[:id])
    respond_with @mail
  end

  def create
    @mail = Mail.new(params[:mail])
    flash[:notice] = "Your email message was created successfully." if @mail.save
    respond_with(@mail)
  end

  def update
    @mail = Mail.find(params[:id])
    respond_with @mail
  end

  def destroy
    @mail = Mail.find(params[:id])
    @mail.destroy
    respond_with @mail
  end
end
