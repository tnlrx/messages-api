module Api
  module V1
    class MessagesController < ApplicationController

      before_action :get_discussion
      before_action :get_message, only: [:show, :update, :destroy]

      # GET /messages
      def index
        json_response(@discussion.messages)
      end

      # GET /messages/:id
      def show
        json_response(@message)
      end

      # POST /messages
      def create
        @discussion.messages.create!(message_params)
        json_response(@message, :created)
      end

      # PUT /messages/:id
      def update
        @message.update(message_params)
        head :no_content
      end

      # PUT /messages/archive
      #def archive
      # diff = Time.now.to_i - 3.months.ago
      #  Message.where('created_at<?', diff).update_all(archived: true)
      #end

      # DELETE /messages/:id
      def destroy
        @message.destroy
        head :no_content
      end

      private

      # before_action --> chargement du message
      #def get_message
      #  @message = Message.find(params[:id])
      #@message = Message.joins(messages: :parent_message_id).where('id=? or parent_message_id=id', params[:id])
      #end
      # liste des paramètres autorisés
      def message_params
        params.require(:message).permit(:text, :author, :recipient)
      end

      # before_action --> chargement de la discussion
      def get_discussion
        @discussion = Discussion.find(params[:discussion_id])
      end

      # before_action --> chargement du message de la discussion
      def get_message
        @message = @discussion.messages.find(params[:id]) if @discussion
      end

    end
  end
end