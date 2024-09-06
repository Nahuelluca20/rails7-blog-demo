require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "New Comment!", mail.subject
    assert_equal ["nahuelluca20@gmail.com"], mail.to
    assert_equal ["nahueldevelop@gmail.com"], mail.from
  end
end
