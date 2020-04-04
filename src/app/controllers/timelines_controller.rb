class TimelinesController < ApplicationController
  caches_page :latest
  LIMIT = 30

  def latest
    @functions = Function.limit(LIMIT).order(created_at: :desc).all
  end
end
