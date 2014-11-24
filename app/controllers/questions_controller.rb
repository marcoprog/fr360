class QuestionsController < ApplicationController

  before_action   :question_params , only: [:create, :update]
  before_action   :find_question, only: [:destroy, :show, :edit, :update]

  def new
    @question = Question.new
    @question.position = Question.last.position + 1
  end

  def index
    @questions = Question.sorted
  end

  def update
    @question = @question.update(question_params)


  end

  def show
  end

  def edit
  end

  def create
    @question = Question.create(question_params)
    if @question.valid?
      redirect_to question_path(@question)
    else
    end
  end

  def destroy
    @question = @question.destroy
    redirect_to action: :index
  end

  def find_question
    @question = Question.find(params[:id])
  end

  protected
  def question_params
    params.require(:question).permit(:position, :question, :summary)
  end

end
