module YmTest
  module AjaxHelpers
    def wait_for_ajax
      begin
        Timeout.timeout(Capybara.default_wait_time) do
          loop until finished_all_ajax_requests?
        end
      rescue Capybara::NotSupportedByDriverError => e
        puts "Javascript not enabled, not waiting for script to finish"
      end
    end

    def finished_all_ajax_requests?
      page.evaluate_script('jQuery.active').zero?
    end
  end
end
