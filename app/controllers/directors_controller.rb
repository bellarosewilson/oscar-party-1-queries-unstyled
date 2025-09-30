class DirectorsController < ApplicationController
  def index
  @list_of_directors = Director.all  
    render({ :template => "director_templates/index" })
  end
  def show
    render({ :template => "director_templates/show" })
  end
end
