module Api
  module V1

    VERSION = '0.0.1'

    class SfsController < ApplicationController

      # ファイル一覧 API
      # システムにアップロードされている条件に一致するファイル情報のデータを返す
      # パラメータによって LIKE 検索も可能
      def index
        @files = FileName.all.order(created_at: 'desc')

        render json: @files
      end

      # ファイルアップロード API
      # POST で送られてきたファイルを DB に格納する
      def create
      end

      # ファイル詳細 API
      # パラメータに数字を指定した場合に file.id に合致するものを返す
      def show
      end

      # ファイル削除 API
      # 指定した ID のファイルを削除する
      def destroy
      end

    end
  end
end
