module IntegrationMacros

    def sign_in
      before(:each) do
        user = FactoryBot.create(:user)
        login_as(user, :scope => :user)
      end
    end

  
    # Not used in this tutorial, but left to show an example of different user types
    # def login_admin
    #   before(:each) do
    #     @request.env["devise.mapping"] = Devise.mappings[:admin]
    #     sign_in FactoryBot.create(:admin) # Using factory bot as an example
    #   end
    # end
  end