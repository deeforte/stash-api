class YarnsController < OpenReadController
  before_action :set_yarn, only: [:update, :destroy]

  # GET /yarns
  def index
#  @yarns = current_user.yarns.find(params[:id])
#  @yarns = Yarn.all
  @yarns = current_user.yarns

    render json: @yarns
  end

  # GET /yarns/1
  def show
    render json: @yarn
  end

  # POST /yarns
  def create
  # @yarn = Yarn.new(yarn_params)
    @yarn = current_user.yarns.build(yarn_params)

    if @yarn.save
      render json: @yarn, status: :created, location: @yarn
    else
      render json: @yarn.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yarns/1
  def update
    if @yarn.update(yarn_params)
      head :no_content
    else
      render json: @yarn.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yarns/1
  def destroy
    @yarn.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yarn
#      @yarn = Yarn.find(params[:id])
      @yarn = current_user.yarns.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yarn_params
    #  params.require(:yarn).permit(:user_id, :name, :quantity, :yards, :color, :project)
      params.require(:yarn).permit(:name, :quantity, :yards, :color, :project)
    end
end
