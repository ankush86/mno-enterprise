require 'rails_helper'

module MnoEnterprise
  describe Jpi::V1::Admin::ProductsController, type: :controller do
    include MnoEnterprise::TestingSupport::SharedExamples::JpiV1Admin

    render_views
    routes { MnoEnterprise::Engine.routes }
    before { request.env['HTTP_ACCEPT'] = 'application/json' }

    before(:all) do
      Settings.merge!(dashboard: {marketplace: {local_products: true}})
      Rails.application.reload_routes!
    end

    # Stub user and user call
    let(:user) { build(:user, admin_role: 'admin') }
    let!(:current_user_stub) { stub_api_v2(:get, "/users/#{user.id}", user, %i(deletion_requests organizations orga_relations dashboards)) }
    before do
      sign_in user
    end

    describe 'GET #index' do
      let(:product) { build(:product) }

      before { stub_api_v2(:get, '/products', [product], [:'values.field', :assets, :categories, :product_pricings, :product_contracts], {}) }

      subject { get :index }

      it_behaves_like 'a jpi v1 admin action'
    end

    describe 'GET #show' do
      let(:product) { build(:product) }

      before { stub_api_v2(:get, "/products/#{product.id}", product, [:'values.field', :assets, :categories, :product_pricings, :product_contracts], {}) }

      subject { get :show, id: product.id }

      it_behaves_like 'a jpi v1 admin action'
    end
  end
end