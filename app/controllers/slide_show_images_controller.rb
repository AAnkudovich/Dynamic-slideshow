class SlideShowImagesController < ApplicationController
  before_action :set_slide_show_image, only: [:show, :edit, :update, :destroy]

  # GET /slide_show_images
  # GET /slide_show_images.json
  def index
    @slide_show_images = SlideShowImage.all
  end

  # GET /slide_show_images/1
  # GET /slide_show_images/1.json
  def show
  end

  # GET /slide_show_images/new
  def new
    @slide_show_image = SlideShowImage.new
  end

  # GET /slide_show_images/1/edit
  def edit
  end

  # POST /slide_show_images
  # POST /slide_show_images.json
  def create
    @slide_show_image = SlideShowImage.new(slide_show_image_params)

    respond_to do |format|
      if @slide_show_image.save
        format.html { redirect_to @slide_show_image, notice: 'Slide show image was successfully created.' }
        format.json { render :show, status: :created, location: @slide_show_image }
      else
        format.html { render :new }
        format.json { render json: @slide_show_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slide_show_images/1
  # PATCH/PUT /slide_show_images/1.json
  def update
    respond_to do |format|
      if @slide_show_image.update(slide_show_image_params)
        format.html { redirect_to @slide_show_image, notice: 'Slide show image was successfully updated.' }
        format.json { render :show, status: :ok, location: @slide_show_image }
      else
        format.html { render :edit }
        format.json { render json: @slide_show_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slide_show_images/1
  # DELETE /slide_show_images/1.json
  def destroy
    @slide_show_image.destroy
    respond_to do |format|
      format.html { redirect_to slide_show_images_url, notice: 'Slide show image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide_show_image
      @slide_show_image = SlideShowImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_show_image_params
      params.require(:slide_show_image).permit(:link, :altText, :captionText, :possition, :right, :textAllign, :maxWidth, :top, :marginLeft)
    end
end
