class KyoshusController < ApplicationController
  before_action :set_kyoshu, only: [:edit, :update, :destroy]

  def index
   @kyoshus = Kyoshu.all
  end

  def new
   if params[:back]
    @kyoshu = Kyoshu.new(kyoshus_params)
   else
    @kyoshu = Kyoshu.new
   end
  end

  def confirm
   @kyoshu = Kyoshu.new(kyoshus_params)
   render :new if @kyoshu.invalid?
  end

  def create
   @kyoshu = Kyoshu.new(kyoshus_params)
   if @kyoshu.save
    redirect_to kyoshus_path, notice: "あなたの発言が世界に発信されました！"
   else
    render 'new'
   end
  end
  
  def edit
  end
  
  def update
   if @kyoshu.update(kyoshus_params)
    redirect_to kyoshus_path, notice: "あなたは発言を訂正しました！"  
   else
    render 'edit'
   end
  end
  
  def destroy
   @kyoshu.destroy
   redirect_to kyoshus_path, notice: "あなたは発言を撤回しました！"
  end
  
  def kyoshus_params
   params.require(:kyoshu).permit(:content)
  end

  def set_kyoshu
   @kyoshu = Kyoshu.find(params[:id])
  end

end