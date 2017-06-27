class PorfoliosController < ApplicationController
end

def create
   @portfoilio_item= Portfolio.new(params.require(:Portfolio).permit(:title, :subtitle, :body))
  
    respond_to do |format|
      if @portfoilio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfoilio_item is now live.' }
      else
        format.html { render :new }
      end
    end
  end
  
<<<<<<<<< saved version

=========
  def show
      
def destroy
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
  end
  @portfolio_item = Portfolio.find(params[:id])
  end
  Rails.application.routes.draw do
  resources :portfolios

  get 'pages/home'

   get 'about', to: 'pages#about'

  get  'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
>>>>>>>>> local version