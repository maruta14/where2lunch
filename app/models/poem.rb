class Poem < ApplicationRecord
  def keisan
    return content.scan(/怒り/).size * 10
  end

end
