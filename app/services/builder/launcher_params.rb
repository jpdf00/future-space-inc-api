module Builder
  class LauncherParams
    class << self
      def build(params)
        params => {
          id:,
          url:,
          launch_library_id:,
          slug:,
          name:,
          net:,
          window_end:,
          window_start:,
          inhold:,
          tbdtime:,
          tbddate:,
          probability:,
          holdreason:,
          failreason:,
          hashtag:,
          webcast_live:,
          image:,
          infographic:,
          program:,
          status_id:,
          launch_service_provider_id:,
          rocket_id:,
          mission_id:,
          pad_id:
        }

        {
          id:,
          url:,
          launch_library_id:,
          slug:,
          name:,
          net:,
          window_end:,
          window_start:,
          inhold:,
          tbdtime:,
          tbddate:,
          probability:,
          holdreason:,
          failreason:,
          hashtag:,
          webcast_live:,
          image:,
          infographic:,
          program: [],
          imported_t: Time.now,
          publishing_status: 0,
          manual_update: false,
          status_id:,
          launch_service_provider_id:,
          rocket_id:,
          mission_id:,
          pad_id:
        }
      end
    end
  end
end
