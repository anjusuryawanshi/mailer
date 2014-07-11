class MailController < ApplicationController

  respond_to :json

  def index
    respond_with Mail.all
    Mail.instance_methods(false).map { |m|
      puts Mail.instance_method(m).source_location.first
    }.uniq
  end

  def create
    @mail = Mail.new(params[:mail])
    puts @mail
    respond_with @mail
  end

end
