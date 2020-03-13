RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin_user
  end
  config.current_user_method(&:current_admin_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # ダッシュボードの表示箇所
  # モデル名 単数形
  config.model 'Admin_user' do
    LABEL_email = 'メールアドレス'
    LABEL_created_at = '作成日時'
    # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
    list do
      field :email do
        label LABEL_email
      end
      field :created_at do
        label LABEL_created_at
      end
    end
  end
  # モデル名 単数形
  config.model 'Contact' do
    LABEL_name = '氏名'
    LABEL_email = 'メールアドレス'
    LABEL_subject = '件名'
    LABEL_message = 'メッセージ'
    LABEL_created_at = '作成日時'
    LABEL_updated_at = '更新日時'
    # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
    list do
      field :name do
        label LABEL_name
      end
      field :email do
        label LABEL_email
      end
      field :subject do
        label LABEL_subject
      end
      field :message do
        label LABEL_message
      end
      field :created_at do
        label LABEL_created_at
      end
    end
  end

  # モデル名 単数形
  config.model 'Picture' do
    LABEL_name = 'メンバー名'
    LABEL_image = '画像'
    LABEL_created_at = '作成日時'
    LABEL_updated_at = '更新日時'
    # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
    list do
      field :name do
        label LABEL_name
        help "akira or しんのすけ or まーしー or ライブ を入力"
      end
      field :image do
        label LABEL_image
      end
      field :created_at do
        label LABEL_created_at
      end
    end
  end

  # モデル名 単数形
  config.model 'Schedule' do
    LABEL_event_type = 'イベント or ライブ'
    LABEL_title = 'イベント名'
    LABEL_date = '日付'
    LABEL_open = 'オープン時間'
    LABEL_start = 'スタート時間'
    LABEL_advance_price = '前売価格'
    LABEL_day_price = '当日価格'
    LABEL_place_name = '会場名'
    LABEL_address = '会場住所'
    LABEL_message = '備考欄'
    LABEL_cast = '出演者'
    LABEL_created_at = '作成日時'
    LABEL_updated_at = '更新日時'
    # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
    list do
      field :event_type do
        label LABEL_event_type
      end
      field :title do
        label LABEL_title
      end
      field :date do
        label LABEL_date
      end
      field :open do
        label LABEL_open
      end
      field :start do
        label LABEL_start
      end
      field :advance_price do
        label LABEL_advance_price
      end
      field :day_price do
        label LABEL_day_price
      end
      field :place_name do
        label LABEL_place_name
      end
      field :address do
        label LABEL_address
      end
      field :message do
        label LABEL_message
      end
      field :cast do
        label LABEL_cast
      end
      field :created_at do
        label LABEL_created_at
      end
      field :updated_at do
        label LABEL_updated_at
      end
    end
  end

end
