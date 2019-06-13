class ApplicationMailer < ActionMailer::Base
  default_options= from: 'from@example.com'
  layout 'mailer'
end
