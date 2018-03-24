class PresentationsController < ApplicationController
  def index
    @presentation = Presentation.where(upload_on: Date.today.strftime('%Y-%m-%d'))
  end

  def upload
  end

  def import
    # fileはtmpに自動で一時保存される
    Presentation.import(params[:file])
    redirect_to root_url, notice: "商品を追加しました。"
  end
end
