class GradebooksController < ApplicationController
  before_action :set_gradebook, only: [:show, :edit, :update, :destroy]

  # GET /gradebooks
  # GET /gradebooks.json
  def index
    @gradebooks = Gradebook.all
  end

  # GET /gradebooks/1
  # GET /gradebooks/1.json
  def show
  end

  # GET /gradebooks/new
  def new
    @gradebook = Gradebook.new
  end

  # GET /gradebooks/1/edit
  def edit
  end

  # POST /gradebooks
  # POST /gradebooks.json
  def create
    @gradebook = Gradebook.new(gradebook_params)

    respond_to do |format|
      if @gradebook.save
        format.html { redirect_to @gradebook, notice: 'Gradebook was successfully created.' }
        format.json { render :show, status: :created, location: @gradebook }
      else
        format.html { render :new }
        format.json { render json: @gradebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradebooks/1
  # PATCH/PUT /gradebooks/1.json
  def update
    respond_to do |format|
      if @gradebook.update(gradebook_params)
        format.html { redirect_to @gradebook, notice: 'Gradebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradebook }
      else
        format.html { render :edit }
        format.json { render json: @gradebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradebooks/1
  # DELETE /gradebooks/1.json
  def destroy
    @gradebook.destroy
    respond_to do |format|
      format.html { redirect_to gradebooks_url, notice: 'Gradebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradebook
      @gradebook = Gradebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gradebook_params
      params.require(:gradebook).permit(:student_id, :assignment_name, :grade, :date)
    end
end
