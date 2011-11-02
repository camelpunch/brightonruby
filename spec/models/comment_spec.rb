require 'spec_helper'

describe Comment do
  it "holds text for the comment" do
    comment = Comment.new
    comment.text = 'hello there'
    comment.text.should == 'hello there'

    comment.save
    comment.reload

    comment.text.should == 'hello there'
  end

  it { should_not be_approved }

  context "when approved by admin" do
    before { subject.approved = true }
    it { should be_approved }
  end
end
