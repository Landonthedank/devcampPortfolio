class PortfolioController < ApplicationController
def idex
  @portfoilio_items = Porfolio.all
end

    def new
        @portfoilio_item = Portfolio.new
    end
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
  
  end