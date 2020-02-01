class ReplacerController < ApplicationController
  
  def main
    @character_replacer = CharacterReplacer.new
  end

  def replace
    attributes = {
      target: params[:target],
      replacement: params[:replacement],
      string: params[:string]
    }

    @character_replacer = CharacterReplacer.new(attributes)

    if @character_replacer.valid?
      render :result
    else
      render :main
    end
  end


end
