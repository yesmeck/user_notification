module UserNotification
  # Handles creation of Activities upon destruction and update of notifiable model.
  module Update
    extend ActiveSupport::Concern

    included do
      after_update :notification_on_update
    end
    private
      # Creates notification upon modification of the notifiable model
      def notification_on_update
        create_notification(:update)
      end
  end
end
