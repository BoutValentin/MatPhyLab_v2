class StaticPagesController < ApplicationController
  def home
    @matters = Matter.order('id ASC').all
  end

  def legal
  end

end
