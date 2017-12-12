require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views
  Capybara.ignore_hidden_elements = false
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App\n"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.body.should have_xpath("//title",:text => "\nHome\n| #{@base_title}")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.body.should have_xpath("//title",:text => "\nHelp\n| #{@base_title}")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.body.should have_xpath("//title",:text => "\nAbout\n| #{@base_title}")
    end
  end
end