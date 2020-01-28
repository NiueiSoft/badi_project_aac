module Badi
  module V1
    module ExceptionHandler
      extend ActiveSupport::Concern

      class RoomNotFound < StandardError; end

      included do
        rescue_from Badi::V1::ExceptionHandler::RoomNotFound do |e|
          error!(e.message, 404)

        rescue_from ActiveRecord::RecordInvalid do |e|
          error!(e.message, 422)
        end
      end

    end
  end
end
