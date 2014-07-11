require 'mail'

class MailController < ApplicationController

  respond_to :json

  def index
    @mail = Mail.new("this is a body")
    respond_with @mail
  end

end
