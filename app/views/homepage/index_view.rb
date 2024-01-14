# frozen_string_literal: true

class Homepage::IndexView < ApplicationView
  def template
    h2 { "This is a header" }
    p { "Arr, hoist the mainsail! Lorem ipsum scallywag, yo-ho-ho and a bottle o' rum. Plunder the seven seas, walk the plank, shiver me timbers. Aye, treasure map and parley, swashbuckling on the high seas. Buccaneer, marooned on a " }
  end
end
