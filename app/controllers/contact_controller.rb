class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message])
    if @contact.save
      render :done
    else
      render :new
    end
  end

  def done
    if @contact.present?
      render :done
    else
      render :new
    end
  end

  private

  # def contact_params
  #   params.require(:contact).permit(:name, :email, :subject, :message)
  # end

end