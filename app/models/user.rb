class User < ApplicationRecord
  after_create :create_initial_setting
  # userクラスが作成された後に、後述のメソッドが発動

  # 外部のIDを持っている場合はbelong_to,持っていない場合はhas_oneという認識でOK

  has_one :brave, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def create_initial_setting
    create_brave!(initial_brave)
  end


  private 

  def initial_brave
    {
      name:"絶対PGになるマン",
      exp: 0,
      level: 1,
      max_hp: 15,
      offense: 10,
      defense: 10
    }
  end

  end

end