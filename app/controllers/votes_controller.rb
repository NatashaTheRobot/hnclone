class VotesController < ApplicationController


  # POST /votes
  # POST /votes.json
  def create
    link = Link.find(params[:link_id])
    @vote = link.votes.build
    @vote.value = params[:value]
    @vote.user = current_user
    
    if @vote.save
      flash[:success] = "Thanks for the upvote!"
    else
      flash[:error] = "Sorry, your upvote did not count"
    end
    
    redirect_to root_path
    
  end

end
