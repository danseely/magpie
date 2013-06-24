module Authentication
  module Helpers
    def signin(user, password = 'p@ssword')
      page.driver.post sessions_path, {user: {email: user.email, password: password}}
    end
  end
end
