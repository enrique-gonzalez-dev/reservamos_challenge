# frozen_string_literal: true

class PagesController < ApplicationController
  def welcome
    render :ok, json: {
      message: 'Weather API - Visit https://github.com/enrique-gonzalez-dev/reservamos_challenge for more info'
    }
  end
end
