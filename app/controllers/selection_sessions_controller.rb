class SelectionSessionsController < ApplicationController
  # GET /selection_sessions
  # GET /selection_sessions.json
  def index
    @selection_sessions = SelectionSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selection_sessions }
    end
  end

  # GET /selection_sessions/1
  # GET /selection_sessions/1.json
  def show
    @selection_session = SelectionSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selection_session }
    end
  end

  # GET /selection_sessions/new
  # GET /selection_sessions/new.json
  def new
    @selection_session = SelectionSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selection_session }
    end
  end

  # GET /selection_sessions/1/edit
  def edit
    @selection_session = SelectionSession.find(params[:id])
  end

  # POST /selection_sessions
  # POST /selection_sessions.json
  def create
    @selection_session = SelectionSession.new(params[:selection_session])

    respond_to do |format|
      if @selection_session.save
        format.html { redirect_to @selection_session, notice: 'Selection session was successfully created.' }
        format.json { render json: @selection_session, status: :created, location: @selection_session }
      else
        format.html { render action: "new" }
        format.json { render json: @selection_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selection_sessions/1
  # PUT /selection_sessions/1.json
  def update
    @selection_session = SelectionSession.find(params[:id])

    respond_to do |format|
      if @selection_session.update_attributes(params[:selection_session])
        format.html { redirect_to @selection_session, notice: 'Selection session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @selection_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selection_sessions/1
  # DELETE /selection_sessions/1.json
  def destroy
    @selection_session = SelectionSession.find(params[:id])
    @selection_session.destroy

    respond_to do |format|
      format.html { redirect_to selection_sessions_url }
      format.json { head :no_content }
    end
  end
end
