# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :set_profile_slug, :set_profile_owner

  def show; end

  def not_found; end

  private

  def set_profile_slug
    @profile_slug = params[:profile_slug]
  end

  def set_profile_owner
    @profile_owner = User.find_by!(slug: params[:profile_slug])
  rescue ActiveRecord::RecordNotFound
    render :not_found
  end
end
