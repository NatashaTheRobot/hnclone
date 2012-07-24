class VotesController < ApplicationController


  # POST /votes
  # POST /votes.json
  def create
    link = Link.find(params[:link_id])
    if link.user_id != current_user.id
      @vote = link.votes.build
      @vote.value = params[:value]
      @vote.user = current_user
    
      if @vote.save
        flash[:success] = "Thanks for the vote!"
      else
        flash[:error] = "Sorry, your vote did not count"
      end
    else
      flash[:error] = "You cannot upvote your own link!"
    end
    
    redirect_to root_path
    
  end

end
