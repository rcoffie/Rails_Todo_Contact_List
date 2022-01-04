class ContactController < ApplicationController
  def index
    @contactLists = ContactList.all
    render json: @contactLists
  end


#   def index
#     @secretMenuItems = SecretMenuItem.all 
#     render json: @secretMenuItems
# end 

def show
    @contactList = ContactList.find(params[:id])
    render json: @contactList
end 

def create
    @contactList = ContactList.create(
        name: params[:name],
        phone_number: params[:phone_number],
        
    )
    render json: @contactList
end 

def update
    @contactList = ContactList.find(params[:id])
    @contactList.update(
        name: params[:name],
        phone_number: params[:phone_number],
        
      
    )
    render json: @contactList
end 

def destroy
    @contactLists = ContactList.all 
    @contactList = ContactList.find(params[:id])
    @contactList.destroy
    render json: @contactList
end 
end


