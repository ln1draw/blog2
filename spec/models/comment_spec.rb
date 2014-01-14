require 'spec_helper'

describe Comment do
  it "records the user id" do
    user = build(:user)
    comment = build(:comment, user_id: user.id)
    expect(comment.user_id).to eq(1)
  end
  it "saves the date as a date object" do
    comment = build(:comment)
    expect(comment.date.class).to eq(Date)
  end
  it "is not valid if the content is empty" do
    expect(build(:comment, content: '')).to be_invalid
  end
  it "is not valid if the user id is empty" do
    expect(build(:comment, user_id: '')).to be_invalid
  end
end