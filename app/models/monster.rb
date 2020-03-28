class Monster < ApplicationRecord
  include Calculation
  # culcモジュールをmixinする

  # モンスターは他のテーブルとつながっていない
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :bg_image, presence: true
  validates :exp, presence: true
  validates :recommended_level, presence: true
  validates :max_hp, presence: true
  validates :offense, presence: true
  validates :defense, presence: true

  attr_accessor :hp, :damage 

  def session_attributes(hp: self.max_hp)
    attributes.slice("name","offense","defense","exp").merge("hp" => hp)
  end

  def attack(brave)
    brave.hp -= brave.damage = damage_calc(attacker: self,defender: brave)
    brave.hp = 0 if brave.hp < 0
      # 勇者のHPが0以下になったら0にする。
  end

  def spell_attack(brave)
    brave.hp -= brave.damage = monster_spell_damage_calc(attacker: self,defender: brave)
    brave.hp = 0 if brave.hp < 0
      # 勇者のHPが0以下になったら0にする。
  end




end
