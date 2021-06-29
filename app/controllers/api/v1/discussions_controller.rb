module Api
  module V1
    class DiscussionsController < ApplicationController

      before_action :get_discussion, only: [:show, :update, :destroy]

      # GET /discussions
      def index
        json_response(Discussion.all)
      end

      # GET /discussions/:id
      def show
        json_response(@discussion)
      end

      # POST /discussions
      def create
        @discussion = Discussion.create!(discussion_params)
        json_response(@discussion, :created)
      end

      # PUT /discussions/:id
      def update
        @discussion.update(discussion_params)
        head :no_content
      end

      # DELETE /discussions/:id
      def destroy
        @discussion.destroy
        head :no_content
      end

      private

      # before_action --> chargement de la discussion
      def get_discussion
        @discussion = Discussion.find(params[:id])
      end

      # liste des paramètres autorisés
      def discussion_params
        params.require(:discussion)
      end
    end
  end
end