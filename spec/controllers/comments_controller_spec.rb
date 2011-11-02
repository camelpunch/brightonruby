require 'spec_helper'

describe CommentsController do
  describe "POST 'create'" do
    it "should save a comment to the database" do
      Comment.should_receive(:create).
        with('text' => 'bobby has legs')

      post :create, :comment => { :text => 'bobby has legs' }
    end

    it "should redirect the user back to the homepage" do
      post :create, :comment => { :text => 'bobby has legs' }
      response.should redirect_to(:root)
    end

    context "when text is blank" do
      it "should send the blank text to the database" do
        Comment.should_receive(:create).
          with('text' => '')

        post :create, :comment => { :text => '' }
      end
    end
  end
end
