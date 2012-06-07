# encoding: utf-8
class KeywordCategoriesController < InheritedResources::Base
  authorize_resource

  def index
    redirect_to keywords_path
  end

  def destroy
    resource.destroy
    redirect_to :back
  end

  protected

  def collection
    @keyword_categories ||= end_of_association_chain.page(params[:page])
  end

end

