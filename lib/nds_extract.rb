$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
def directors_totals(nds)
  index=0 
  totals={} 
  while index<nds.length do 
    directors_name=nds[index][:name]
    totals[directors_name]=0 
    movie_index=0 
    while movie_index<nds[index][:movies].length do 
      totals[directors_name]+= nds[index][:movies][movie_index][:worldwide_gross]
      movie_index+=1 
    end 
    index+=1 
  end 
  totals 
end 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil