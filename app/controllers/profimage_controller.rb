class ProfimageController < ApplicationController
  def new
    @profimage = Profimage.new
  end
  
  def create
    # binding.pry
    @profimage = current_user.profimage || current_user.build_profimage
    @profimage.assign_attributes(profimage_params)
    
    if @profimage.save
      redirect_to profimage_path, success: 'プロフィール画像の投稿に成功しました'
    else
      flash.now[:danger] = "プロフィール画像の投稿に失敗しました"
      render :new
    end
  end
  
  private
    def profimage_params
      params.require(:profimage).permit(:image)
    end
end

