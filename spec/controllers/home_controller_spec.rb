require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should assign existing comments" do
      existing_comments = [
        Comment.create,
        Comment.create,
      ]
      get 'index'
      assigns(:comments).should == existing_comments
    end
  end

end
