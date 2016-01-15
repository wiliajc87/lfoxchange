class AnswersController < ApplicationController
  before_action :set_answer, only: [:edit, :update, :destroy]

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = session[:user_id]
    @answer.question_id = params[:answer][:question_id]
    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer.question, notice: 'Thanks for your contribution–Answer was saved!' }
        format.json { render :show, status: :created, location: @answer.question }
      else
        format.html { redirect_to @answer.question, notice: 'Error: Answer was not saved.' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer.question, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer.question }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @question = @answer.question
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to @question, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:body)
    end
end
