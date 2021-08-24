class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :subject, validate: true
    attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :message,   validate: true
    attribute :files, attachment: true
    attribute :nickname,  captcha: true

    def headers
      {
        :subject => subject,
        :to => Rails.application.credentials.mail[:to],
        :from => %("#{name}" <#{email}>)
      }
    end
end
