module DeviseHelper
  def bootstrap_devise_error_messages!
    return "" if resource.errors.empty?

    html = ""
    resource.errors.full_messages.each do |error_message|
      html += <<-EOF
      <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">close</span>
        </button>
        #{error_message}
      </div>
      EOF
    end
    html.html_safe
  end

  def is_username_blank?
    if params[:user][:username].blank?
      params[:user][:username] = "匿名"
    end
  end

  def return_labs
    labs = ["未定", "引原研(先端電気システム論)", "萩原研(自動制御工学)", "坂本研(システム創成論)", "土居研(複合システム論)", "小林研(生体機能工学)", "雨宮研(超伝導工学)", "和田研(電磁回路工学)", "松尾研(電磁エネルギー工学)",
    "掛谷研(集積機能工学)", "白石誠研(極微電子工学)", "竹内研(応用量子物性)", "木本研(半導体物性工学)", "山田研(電子材料物性工学)", "川上研(光材料物性工学)", "野田研(光量子電子工学)", "杉山研(量子電磁工学)",
    "デゾイサ研(ナノプロセス工学)", "金子研(先進電子材料)",
    "黒橋研(言語メディア)", "西野研(コンピュータビジョン)", "原田研(ディジタル通信)", "山本高研(伝送メディア)", "大木研(知的通信網)", "佐藤研(情報回路方式)", "橋本研(超高速信号処理)", "石井研(論理生命学)", "松田哲研(医用工学)",
    "下田研(エネルギー情報学)", "中村祐研(電磁エネルギー学)", "土井研(エネルギー応用基礎学)", "白石康研(プロセスエネルギー学)",
    "山本衛研(リモートセンシング工学)", "橋口研(地球大気計測)", "小嶋研(宇宙電波工学)", "篠原研(マイクロ波エネルギー伝送)", "大村研(電波科学シミュレーション)", "長崎研(プラズマエネルギー変換)", "南研(高音プラズマ物性)", "松田一研(エネルギー光物性)", "中村裕研(複合メディア)"]
    return labs
  end
end