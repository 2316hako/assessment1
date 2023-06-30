class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '未開封' },
    { id: 3, name: '開封' },
    { id: 4, name: '箱無' },
    { id: 5, name: 'ジャンク' }
  ]

  include ActiveHash::Associations
  has_many :items

  end