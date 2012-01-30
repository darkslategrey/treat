module Treat
  module Inflectors
    module OrdinalWords
      # This class is a wrapper for the functions included
      # in the 'linguistics' gem that allow to describe a
      # number in words in ordinal form.
      #
      # Project website: http://deveiate.org/projects/Linguistics/
      class Linguistics
        require 'treat/helpers/linguistics_loader'
        # Desribe a number in words in ordinal form, using the
        # 'linguistics' gem.
        def self.ordinal_words(number, options = {})
          klass = Treat::Helpers::LinguisticsLoader.load(number.language)
          klass.ordinate(number.to_s)
        end
      end
    end
  end
end
