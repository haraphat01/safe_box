class EventsController < ApplicationController
  def index
    Event.all
  end

  def new
  end

  
    def create   
      @event = Event.new(article_params)   
      @event.user = current_user  
      @event.save   
      flash[:success]="Your Event has been Created"
      redirect_to @event
    end
  

    def show   
      @event = Event.find(params[:id])
     end

  def edit
  end

  def update
  end

  def destroy
  end
  private

  def article_params   
    params.require(:event).permit(:title, :text) 
  end
end
