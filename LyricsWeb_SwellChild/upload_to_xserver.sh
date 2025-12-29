#!/bin/bash
# Xサーバーへのアップロード用スクリプト
# 使用方法:
# 1. 以下の変数を実際の情報に置き換えてください
# 2. このスクリプトを実行: bash upload_to_xserver.sh

# XサーバーのSSH接続情報（以下を実際の情報に置き換えてください）
XSERVER_HOST="ssh[番号].xserver.jp"  # サーバーパネルの「SSH設定」で確認
XSERVER_USER="your_username"          # サーバーパネルのユーザー名
XSERVER_PORT="10022"                  # 通常は10022（サーバーパネルで確認）
REMOTE_PATH="/home/[サーバーID]/[ドメイン名]/wp-content/themes/swell_child/"

# ローカルファイル
LOCAL_FILE="/Users/hoshizaki/Desktop/LyricsWeb_SwellChild/front-page.php"

# SCPでアップロード
echo "Xサーバーにアップロード中..."
scp -P $XSERVER_PORT "$LOCAL_FILE" $XSERVER_USER@$XSERVER_HOST:"$REMOTE_PATH"

if [ $? -eq 0 ]; then
    echo "✅ アップロード完了！"
else
    echo "❌ アップロードに失敗しました。"
    echo "接続情報を確認してください。"
fi

