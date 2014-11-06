class SendersController < ApplicationController
  def edit
    if Sender.all == [] then
      @sender = Sender.new
      @sender.save
    end
    @sender = Sender.find(1)

  end

  def update
    @sender = Sender.find(1)

    respond_to do |format|
      if @sender.update_attributes(params[:sender])
        format.html { redirect_to students_url }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sender.errors, status: :unprocessable_entity }
      end
    end
  end
end