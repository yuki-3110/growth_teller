class Career < ApplicationRecord
  belongs_to :user
  validates :industry, presence: true
  validates :occupation, presence: true
  validates :company_scale, presence: true
  validates :position, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true

  enum industry: { 
    'インターネット・IT・通信関連': 0, '金融関連': 1, '流通・小売関連': 2, 
    '食品関連': 3, '電気・精密機器関連': 4, '自動車・機械関連': 5,
    '化学・素材関連': 6, '医療品・日用品・その他メーカー関連': 7, '不動産・建設関連': 8,
    'マスコミ・出版・広告関連': 9, '教育・医療・福祉関連': 10, '各種サービス関連': 11,
    '交通・運輸・エネルギー関連': 12, '官公庁・団体関連': 13, 'その他': 14
  }

  enum occupation: { 
    '営業系（営業、MR、営業企画 他）': 0, '企画・事務・管理系（経営企画、広報、人事、事務 他）': 1, '販売・サービス系（ファッション、フード、小売 他）': 2, 
    '専門サービス系（医療、福祉、教育、ブライダル 他）': 3, 'クリエイティブ系（WEB・ゲーム制作、プランナー 他）': 4, 'ITエンジニア（アプリ開発、ITコンサル 他）': 5,
    '電気・電子・機械系エンジニア（電子・回路・機械設計 他）': 6, '建築・土木系エンジニア（建築、設計、施工管理 他）': 7, '医療・化学・素材・食品系専門職（研究・製品開発、生産管理 他）': 8,
    '運輸・物流・設備系（ドライバー、警備、清掃 他）': 9, '専門職系（コンサルタント、金融、不動産）': 10, 'その他（公務員、団体職員）': 11
  }
  
  enum company_scale: { 
    '50名以下': 0, '300名以下': 1, '1,000名以下': 2, 
    '5,000名以下': 3, '10,000名以下': 4, '10,000名以上': 5
  }

  enum position: { '一般社員': 0, '管理職': 1, '経営陣': 2}
end
