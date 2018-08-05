class ReflectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reflection, only: [:edit, :update]

  def index
    @user = User.find(current_user.id)
    @diaries = Diary.where(user_id: current_user.id).order(date: :desc, created_at: :desc)
    @reflections = Reflection.where(user_id: current_user.id).order(date: :desc, created_at: :desc)
  end

  def new
    @reflection = Reflection.new
    @reflection.memos.build
  end

  def create
    @reflection = current_user.reflections.new(reflection_params)
    if @reflection.save
      redirect_to root_path, notice: 'メモ書きができました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @reflection.update(update_reflection_params)
      redirect_to root_path, notice: 'メモ書きを更新しました'
    else
      render :edit
    end
  end

  private

  def set_reflection
    @reflection = Reflection.find(params[:id])
  end

  def reflection_params
    params.require(:reflection).permit(
      :title,
      :date,
      memos_attributes: [:memo]
    )
  end

  def update_reflection_params
    params.require(:reflection).permit(
      :title,
      :date,
      memos_attributes: [:memo, :_destroy, :id]
    )
  end

end
