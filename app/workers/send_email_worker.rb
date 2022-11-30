class SendEmailWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'email_queue'

  def perform(user_id)
    @user = User.find(user_id)
    UserMailer.with(user: @user).welcome_email.deliver_later
    puts "==== Email Sent to user #{@user.id} ==="
  end
end