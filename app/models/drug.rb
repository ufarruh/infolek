require 'elasticsearch/model'


class Drug < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


end

Drug.import
