class PurchasesController < ApplicationController


  def index
    @total = Purchase.sum(&:total)
  end

  def import
    Purchase.import(params[:file])

    redirect_to root_url, notice: "Purchases importeds"
  end
end
