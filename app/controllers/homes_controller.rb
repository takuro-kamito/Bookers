class HomesController < ApplicationController
  def top
  end
    
    def create
    
    list = List.new(list_params)
    
    list.save
    
    redirect_to '/top'
    end
    
    private
    
    def list_params
    params.require(:list).permit(:title, :body)
  　end 
  end
  end 

