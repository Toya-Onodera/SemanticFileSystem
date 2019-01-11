module Client
    class FilesController < ApplicationController

        # ファイル一覧
        # Dropbox みたいな一覧を表示する
        def index
            @files = FileName.all.order(created_at: 'desc')

            #render json: @files
        end

        # ファイルアップロード
        # TODO: 可能なら D&D も使用したい
        def new
        end

        # ファイルアップロード
        # POST で送られてきたファイルを DB に格納する
        def create
        end

        # ファイル詳細
        # 詳細 ＋ 削除画面にも飛べるようにする
        # TODO: 更新機能も実装したほうが良い？
        def show
        end

        # ファイル削除
        # 指定した ID のファイルを削除する
        def destroy
        end

    end
end
