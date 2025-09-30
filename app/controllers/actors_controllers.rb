class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    
    render({ :template => "actor_templates/index" })
  end
  def show
    the_id = params.fetch("path_id")

    @the_actor = Actor.where({ :id => the_id }).at(0)

    render({ :template => "actor_templates/show" })
  end
end
