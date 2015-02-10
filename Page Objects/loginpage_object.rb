class Loginpage < SitePrism::Page
#set_url "https://testhub.bskyb.com/phonebook/"
element :signintitle_button, :id, 'nav-signin-title'
element :username, :id, 'ap_email'
element :password, :id, 'ap_password'
element :signin_button, :id, 'signInSubmit-input'
end




