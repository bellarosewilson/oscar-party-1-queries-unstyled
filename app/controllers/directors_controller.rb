class DirectorsController < ApplicationController
  def index
  @list_of_directors = Director.all  
    render({ :template => "director_templates/index" })
  end
  def show
    the_id = params.fetch("path_id")

    matching_directors = Director.where({ :id => the_id })

    @the_director = matching_directors.at(0)
  end
  def youngest
    directors_with_dob = Director.where.not({ :dob => nil })
    sorted_directors = directors_with_dob.order({ :dob => :desc })
    @the_youngest_director = sorted_directors.at(0)  
  end
   def oldest
    directors_with_dob = Director.where.not({ :dob => nil })
    sorted_directors = directors_with_dob.order({ :dob => :desc })
    @the_oldest_director = sorted_directors.at(0)  
  end
end
