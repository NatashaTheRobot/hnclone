class LinksController < ApplicationController
  before_filter :find_resource, :only => [:show, :edit, :update, :destroy]
  
  # GET /links
  # GET /links.json
  def index
    @links = Link.scoped.page(params[:page]).per(30)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @comments = @link.comments
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/new
  # GET /links/new.json
  def new
    if current_user
    
      @link = Link.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @link }
      end
    else
      flash[:error] = 'You have to be logged in to submit a comment'
      redirect_to signin_path
    end
  end

  # GET /links/1/edit
  def edit
    if @link.user.id != current_user.id
      redirect_to link_path(@link)
      flash[:error] = "Only the author can edit this link"
    end
  end

  # POST /links
  # POST /links.json
  def create
    
    @link = current_user.links.create(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /links/1
  # PUT /links/1.json
  def update

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end
  end

end
