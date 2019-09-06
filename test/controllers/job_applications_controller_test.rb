require 'test_helper'

class JobApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_applications_new_url
    assert_response :success
  end

end
