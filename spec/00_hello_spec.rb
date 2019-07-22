# frozen_string_literal: true

#
# When you look at the tests below, you'll see that the 'expect' has something in brackets after it,
# that's the thing you'll have to define (def) in your code. If the thing in the brackets has brackets after it,
# you'll have to include those brackets in the solution.
#

require 'spec_helper'
require '00_hello'

describe 'Hello' do
  describe 'the hello function' do
    it 'says hello' do
      expect(hello).to eq('Hello!')
    end
  end

  describe 'the greet function' do
    it 'says hello to someone' do
      expect(greet('Alice')).to eq('Hello, Alice!')
    end
    it 'says hello to someone else' do
      expect(greet('Bob')).to eq('Hello, Bob!')
    end
  end
end
