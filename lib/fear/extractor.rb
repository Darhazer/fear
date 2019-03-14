require 'dry/struct'
require 'treetop'
require 'fear/extractor/grammar'
Treetop.load File.expand_path('extractor/grammar.treetop', __dir__)

module Fear
  module Extractor
    module Types
      include Dry::Types.module
    end

    autoload :Pattern, 'fear/extractor/pattern'
    autoload :Matcher, 'fear/extractor/matcher'

    autoload :AnonymousArraySplatMatcher, 'fear/extractor/anonymous_array_splat_matcher'
    autoload :AnyMatcher, 'fear/extractor/any_matcher'
    autoload :ArrayHeadMatcher, 'fear/extractor/array_head_matcher'
    autoload :ArrayMatcher, 'fear/extractor/array_matcher'
    autoload :ArraySplatMatcher, 'fear/extractor/array_splat_matcher'
    autoload :BooleanMatcher, 'fear/extractor/boolean_matcher'
    autoload :EmptyListMatcher, 'fear/extractor/empty_list_matcher'
    autoload :IdentifierMatcher, 'fear/extractor/identifier_matcher'
    autoload :NamedArraySplatMatcher, 'fear/extractor/named_array_splat_matcher'
    autoload :NilMatcher, 'fear/extractor/nil_matcher'
    autoload :NumberMatcher, 'fear/extractor/number_matcher'
    autoload :StringMatcher, 'fear/extractor/string_matcher'
  end
end
