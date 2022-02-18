require 'rails_helper'


RSpec.describe HomeController, type: :controller do
    
    context "GET #index" do
        login_user
        it "should sucess and render index" do
            get :index
            expect(response).to be_successful
            expect(response).to render_template(:index)
        end
    end      
    
    context "GET #index without login" do
        it "should status 302" do
            get :index
            expect(response).to have_http_status(302)
        end
    end  
    
    context "POST #shorten" do
        login_user
        it "should status 302 and render links" do
            post :shorten, :params => { :input_url => Faker::Internet.url }
            expect(response).to have_http_status(302)
            expect(response).to redirect_to(:links)
        end
    end 


    context "POST #shorten without login" do
        it "should status 302" do
            post :shorten, :params => { :input_url => Faker::Internet.url }
            expect(response).to have_http_status(302)
        end
    end  
    
    context "GET #links" do
        login_user
        it "should sucess and render links" do
            get :links
            expect(response).to be_successful
            expect(response).to render_template(:links)
        end
    end 
    
    context "POST #links without login" do
        it "should status 302" do
            get :links
            expect(response).to have_http_status(302)
        end
    end  
end