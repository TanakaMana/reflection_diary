class DiariesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_diary, only: [:edit, :update]

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    if @diary.save
      redirect_to root_path, notice: '記録を保存しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @diary.update(diary_params)
      redirect_to root_path, notice: '記録を更新しました'
    else
      render :edit
    end
  end

  private

  def set_diary
    @diary = Diary.find(params[:id])
  end

  def diary_params
    params.require(:diary).permit(
      :date,
      :title,
      :text
    )
  end
end
