require 'rails_helper'

describe CustomersController do

  describe "GET index" do

    context 'logged user' do
      it 'renders customers index' do
        get :index
        expect(response).to render_template("index")
      end
    end

    context 'unlogged user' do
      it 'redirects to login page' do
        get :index
        skip 'To do: create user factory'
        expect(response).to redirect_to(new_session_path)
      end
    end
  end

    describe "GET 'show'" do

      let(:customer) { FactoryGirl.create(:customer) }
      before { get :show, id: customer.id }

      context 'all right' do
        it 'assigns customer' do
          expect(assigns(:customer)).to eq(customer)
        end

        it 'returns success' do
          expect(response).to be_success
        end

        it 'renders customer page' do
          expect(response).to render_template("show")
        end
      end
    end

    describe  "GET 'edit'" do
      context 'all right' do
        let(:customer) { FactoryGirl.create(:customer) }
        before { get :edit, id: customer.id }

        it 'assigns customer' do
          expect(assigns(:customer)).to eq(customer)
        end

        it 'returns success' do
          expect(response).to be_success
        end

        it 'renders edit page' do
          expect(response).to render_template("edit")
        end
      end
    end

    describe "PUT 'update'" do
      context 'all right' do
        !let(:customer) { FactoryGirl.create(:customer) }
        before { put :update, id: customer.id, customer: {} }

        it 'returns success' do
          binding.pry
          expect(response).to be_success
        end

        it 'redirects to customer path' do
          expect(response).to redirect_to(customer_path(customer))
        end
      end
    end

end
