class AdvertisementsController < ApplicationController
  def index
  	@advertisements = Advertisements.all
  end

  def show
  	@advertisement = Advertisement.find(paramas[:id])
  end
end
