class PoemsController < ApplicationController
  before_action :login_required

  def poem
    @poem = Poem.new
  end

  def result
  end

  def point
    poem = Poem.new(poem_params)
    poem.save
    @poem = poem
    redirect_to result_path
  end

  private

  def poem_params
    params.require(:poem).permit(:name, :poem, :score)
  end
  
  def login_required
    redirect_to login_path unless current_user
  end

end
