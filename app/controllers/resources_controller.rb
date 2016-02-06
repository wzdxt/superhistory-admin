class ResourcesController < ApplicationController
  def index
    @model_name = params[:model].singularize
    @model_names = @model_name.pluralize
    @cls = @model_name.camelize.constantize
    size = params[:size] || 30
    @datas = @cls.all.order(:id => :desc).first(size)
  end
end

