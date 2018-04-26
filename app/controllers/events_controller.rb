# require 'pry'

class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  set_tab :events
  set_tab :charges
  # GET /events
  # GET /events.json
  def index
    @events = Event.where(user_id: current_user.id)

    # @events = Event.none
    # if params[:seq_number]
    #  @updates = Update.where(seq_number: params[:seq_number])

    # if params[:user_id]
      # @events = Event.where(user_id: params[:user_id])
    # else
    #   @events = Event.all
    # end
    # if user_signed_in? && current_user.player == true
    #   @events = Event.first
    # else
    #   @events = Event.all
    # end
    #  Event.where(id: current_user.id)

  end

  def finishmatch
    # Mailer code goes here - send invite to sherpa

  end

  # GET /events/1
  # GET /events/1.json
  def add_child
  end

  def show
    # set sherpa for event after user selected that sherpa
    currentd = Date.parse(@event.date.to_s)
    @match = Game.find_by(id: @event.game_id).users.find_by(sherpa: true)
    @outputname = User.find_by(id: @match.id).name
    @event.sherpa_id = @match.id
    @event.save!
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event}
      else
        format.html  { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    # check for match with sherpa - comes here after "select sherpa clicked" on new.html.erb, goes to show.html.erb

    # @index = 0
    # @userobject = []
    # User.all.each do |user|
    #   @userobject[@index] = user
    #   @index = @index + 1
    # end

  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:date, :time, :location, :user_id, :sherpa_id, :game_id)
    end

end
