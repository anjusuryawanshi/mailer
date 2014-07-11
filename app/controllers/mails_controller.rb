class MailsController < ApplicationController

  respond_to :json

  def to_format
    return render unless resource.respond_to?(:"to_#{format}")

    if get?
      render format => resource
    elsif has_errors?
      render format => resource.errors, :status => :unprocessable_entity
    elsif post?
      render format => resource, :status => :created, :location => resource
    else
      head :ok
    end
  end

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
    respond_with(@user, :location => "mails/#{@mail.id}.#{params[:format]}")
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
