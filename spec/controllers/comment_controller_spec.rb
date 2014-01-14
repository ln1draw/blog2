require 'spec_helper'

describe CommentsController do
  it "does not let you get new if you are not a logged in user" do
    get :new
    expect(response).to redirect_to(sign_up_path)
  end

  it "redirects to the new page if invalid data is entered" do
    post :create, comment: {content: ''}
    expect(response).to redirect_to(new_comment_path)
  end

  it "redirects to the show page if the comment is entered successfully" do
    post :create, comment: {title: 'foo', content: 'bar', user_id: 1, id: 1 }
    expect(response).to redirect_to(comment_path(1))
  end
end
