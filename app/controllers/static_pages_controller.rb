class StaticPagesController < ApplicationController
  def home
    @matters = Matter.all
  end

  def legal
  end

end
