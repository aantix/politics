class TransController < ApplicationController
  # GET /trans
  # GET /trans.json
  def index
    @transcriptions   = Tran.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transcriptions }
    end
  end

  # GET /trans/1
  # GET /trans/1.json
  def show
    @transcription = Tran.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transcription }
    end
  end

  def new
    @assignment_id = params[:assignmentId]
    @disabled      = Turkee::TurkeeFormHelper::disable_form_fields?(@assignment_id)

    @transcription = Tran.new
    @transcription.tran_segs.build

    @categories    = Category.select_items
    @candidates    = []

    @transcription.video_segment = VideoSegment.find(params[:video_segment_id]) rescue nil

    raise "Must provide a video segment id" if @transcription.video_segment_id.nil?
  end

  # GET /trans/1/edit
  def edit
    @transcription = Tran.find(params[:id])
  end

  # POST /trans
  # POST /trans.json
  def create
    @transcription = Tran.new(params[:transcription])

    respond_to do |format|
      if @transcription.save
        format.html { redirect_to @transcription, notice: 'Tran was successfully created.' }
        format.json { render json: @transcription, status: :created, location: @transcription }
      else
        format.html { render action: "new" }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trans/1
  # PUT /trans/1.json
  def update
    @transcription = Tran.find(params[:id])

    respond_to do |format|
      if @transcription.update_attributes(params[:transcription])
        format.html { redirect_to @transcription, notice: 'Tran was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @transcription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans/1
  # DELETE /trans/1.json
  def destroy
    @transcription = Tran.find(params[:id])
    @transcription.destroy

    respond_to do |format|
      format.html { redirect_to trans_url }
      format.json { head :ok }
    end
  end
end
