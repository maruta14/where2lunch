class StaticPagesController < ApplicationController
  def home
    # @hyou = Poem.paginate(page: params[:page], per_page: 10)
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def contact
  end


end
