require 'rspec'
require_relative 'gol.rb'

describe 'Game of Life' do
  let!(:game) { Game.new }
  let(:world) { World.new }

  context 'Game' do
    subject { Game.new }

    it 'Initializes new game object properly' do
      subject.world.is_a?(World).should be_true
    end
  end

  context 'World' do
    subject { World.new }

    it 'Responds to proper methods' do
      subject.should respond_to(:rows)
      subject.should respond_to(:cols)
      subject.should respond_to(:grid)
    end

    it 'Grid initializes properly' do
      subject.grid.is_a?(Array).should be_true

      subject.grid.each do |row|
        row.is_a?(Array).should be_true
        row.each do |element|
          element.is_a?(Cell).should be_true
          element.alive.should be_false
        end
      end

    end
  end

  context 'Cell' do
    subject { Cell.new }

    it 'Initializes new cell object properly' do
      subject.alive.should be_false
    end

  end

end
