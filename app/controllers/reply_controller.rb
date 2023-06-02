class ReplyController < ApplicationController
  before_action :set_reply, only: %i[delete,show,update]

  def index
    @question = Question.find(params[:question_id])
    @reply=@question.reply
    render json: @reply
  end

  def show
    @reply=Reply.find(params[:id])
    render json: @reply
  end


  def update
    @reply=Reply.find(params[:id])  
    if @reply.update(reply_params)
      render json: @reply
    else
      render json: @reply.errors,status: :unprocessable_entity
    end 
  end

  def set_reply
    @question=Question.find(params[:question_id])
    @reply=@question.reply
  end

  def my_score
    @user_id=User.where(email:params[:email]).last.id
    @scores=(Score.where(user_id:@user_id).count)/2
    render json: @scores

  end
    def reply_params
      params.require(:reply).permit(:option1,:option2,:option3,:option4,:selection,:question_id,:id,:topic,:reply,:user_id)
    end

  def replies
    @reply=Reply.all
    render json:@reply
  end
end
