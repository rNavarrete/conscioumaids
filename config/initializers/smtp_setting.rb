ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.gmail.com',
    :port           => 587,
    :domain         => 'www.consciousmaids.com',
    :authentication => :plain,
    :user_name      => 'login@your.domain.com',
    :password       => 'godfather'
  }