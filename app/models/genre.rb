class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: '鶏肉' },
    { id: 3, name: '牛肉' },
    { id: 4, name: '豚肉' },
    { id: 5, name: 'ラム肉' },
    { id: 6, name: 'その他の肉' },
    { id: 7, name: '魚' },
    { id: 8, name: '野菜' },
    { id: 9, name: '丼もの・揚げ物' },
    { id: 10, name: 'ファーストフード' },
    { id: 11, name: 'デザート' },
    { id: 12, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :meals

  end