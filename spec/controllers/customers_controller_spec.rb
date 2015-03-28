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

      let(:customer) { create(:customer) }
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
        let(:customer) { create(:customer) }
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
      # http://stackoverflow.com/questions/24682671/how-to-complete-the-rspec-put-controller-test-from-scaffold
      context 'all right' do
        !let(:customer) { create(:customer) }
        let(:new_attr) { { name: 'xunda' } }

        it 'redirects to customer path' do
          put :update, id: customer.id, customer: new_attr
          customer.reload
          expect(response).to redirect_to(customer_path(customer))
        end
      end
    end

    describe "POST 'create'" do
      context 'when create successfully' do
        it 'renders customer path' do
          post :create, customer: {name: 'xunda'}
          expect(response).to redirect_to(customer_path(Customer.last))
        end
      end
    end

    describe "GET 'new'" do
      it 'assigns a new customer' do
        get :new
        expect(assigns(:customer)).not_to be_nil
      end
    end
end
