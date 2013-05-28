class ListsController < ApplicationController
  def index
    @lists = ['Music', 'Home']
  end
end
