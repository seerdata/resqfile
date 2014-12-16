require 'securerandom'
require_relative './math/timesim'

class Msgbase

  def get_dimension
    @options.m
  end

  def get_token_id
    my_token_uuid = [
      '104a5866-b844-4186-9322-19cacdcec297',
      '15f32255-aaeb-4d2f-8988-26494bc4d58d',
      '1c953ea8-a620-45bf-8959-3feee5d57c33',
      '28037e39-456d-49e4-998a-17c48ce916aa',
      '212efc9f-f60e-402a-a326-225872a0b0a8',
      '27ffa057-1878-46ea-9450-34475347e0d2',
      '38ef38e8-aa85-4426-beb9-1f877f84fedf',
      '3339efca-5e99-4ea9-9cff-2075136e04bf',
      '35b010e6-3a0d-421c-9c25-354a7a1336ae',
    ].sample
  end
end
