class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 150 }

  def keisan
    score = 0
    score += content.scan(/(IMAGINE THE FUTURE)+/).size * 100
    score += content.scan(/(怒|障|憂|不機嫌|憤|敵|自棄|反|逆上|叫|不満|不服|鬱|不公平|文句|殺|邪|魔|腹が立|頭に来|イライラ|ストレス|フラストレーション|苛|憎|悪|虫|酸|うざい|むか|嫌|カチンと|病|キレ)+/).size * 20
    score += content.scan(/(怖|心配|失|無|怯|警戒|注意|死|疑|嘘|汗|闘|戦|意地|嫉妬|折|愚痴|軽蔑|拒|遠|断|辞|退|馬鹿|不快|暗|飽|頑固|音痴|空気|しつこい|理屈|弱|強引|堅|守ら|不味|嘲る|恥)+/).size * 10
    score += content.scan(/(雨|風|台風|地震|濡|臭|暑|寒|害|間違|あいつ|ふざけ|いかれ|ぽんち|カス|クズ|雑魚|毛)+/).size * 5
    score += content.scan(/(.)\1{2,50}/).size * 5
    score += content.size * 1
    return score
  end


end
