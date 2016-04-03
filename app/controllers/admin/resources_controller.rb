class Admin::ResourcesController < Admin::BaseController
  inherit_resources
  respond_to :html

  before_action :set_current_tab

  def create
    create! &commit_response(:new)
  end

  def update
    update! &commit_response(:edit)
  end

  private

  def commit_response(rerendered_template)
    proc do |success, failure|
      success.html { redirect_to [:admin, controller_name] }
      failure.html do
        flash.now[:error] = resource.errors.full_messages.first
        render rerendered_template
      end
    end
  end

  def set_current_tab
    @current_tab = controller_name.to_sym
  end
end
