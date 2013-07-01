class AttendancesController < ApplicationController

  # POST /events
  # POST /events.json
  def create
    @attendance = Attendance.new(params[:attendance])

    if @attendance.save
      redirect_to event_path( @attendance.event_id )
    else
      redirect_to event_path( @attendance.event_id ) 
    end

  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
