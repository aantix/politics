class TranscriptionsController < ApplicationController
  # GET /transcriptions
  # GET /transcriptions.json
  def index
    @transcriptions = Transcription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transcriptions }
    end
  end

  # GET /transcriptions/1
  # GET /transcriptions/1.json
  def show
    @transcription = Transcription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transcription }
    end
  end

  # GET /transcriptions/new
  # GET /transcriptions/new.json
  def new
    @transcription = Transcription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transcription }
    end
  end

  # GET /transcriptions/1/edit
  def edit
    @transcription = Transcription.find(params[:id])
  end

  # POST /transcriptions
  # POST /transcriptions.json
  def create
    @transcription = Transcription.new(params[:transcription])

    respond_to do |format|
      if @transcription.save
        format.html { redirect_to @transcription, notice: 'Transcription was successfully created.' }
        format.json { render json: @transcription, status: :created, location: @transcription }
      else
        format.html { render action: "new" }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transcriptions/1
  # PUT /transcriptions/1.json
  def update
    @transcription = Transcription.find(params[:id])

    respond_to do |format|
      if @transcription.update_attributes(params[:transcription])
        format.html { redirect_to @transcription, notice: 'Transcription was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcriptions/1
  # DELETE /transcriptions/1.json
  def destroy
    @transcription = Transcription.find(params[:id])
    @transcription.destroy

    respond_to do |format|
      format.html { redirect_to transcriptions_url }
      format.json { head :ok }
    end
  end
end
