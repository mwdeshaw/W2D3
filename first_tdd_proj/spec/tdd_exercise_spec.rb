require "tdd_exercise"
require 'rspec'


describe "#my_uniq" do
  array = [6,1,1,2,3,4,4,5,5]
  string = "6,1,1,2,3,4,4,5,5"

  it "should accept an array as an argument" do
    expect { my_uniq(string).to raise(ArgumentError) }
  end

  it "should return an array" do
    expect(my_uniq(array)).to be_a(Array)
  end

  it "should return an array containing unqiue elements in same order they appeared" do
    expect(my_uniq(array)).to eq(array.uniq)
  end

end

describe "#Array#two_sum" do
  array = [-1, 0, 2, -2, 1]
  string = "-1, 0, 2, -2, 1"

  it "should be a monkey patched instance method of the Array class" do
    expect { (string.two_sum).to raise(NoMethodError) }
  end

  it "should return a 2-d array" do
    expect(array.two_sum).to be_a(Array)
  end

  it "should return an array containing ordered pairs of indices" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

end

describe "#my_transpose" do
  rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]] 
  
  columns = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]]
  
    string = "[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]]"

  it "should accept a 2-d array as an argument" do
    expect { (my_transpose(string)).to raise(ArgumentError) }
  end

  it "should return a 2-d array" do
    expect(my_transpose(rows)).to all( be_a(Array) )
  end

  it "should return a transposed array" do
    expect(my_transpose(rows)).to eq(rows.transpose)
    expect(my_transpose(columns)).to eq(columns.transpose)
  end

end

describe "#stock_picker" do
  prices = [51, 56, 48, 35, 60, 67, 50]
  string = "[51, 56, 48, 35, 60, 67, 50]"

  it "should accept an array as an argument" do
    expect { (stock_picker(string)).to raise(ArgumentError) }
  end

  it "should return a pair of indices as an array" do
    expect(stock_picker(prices)).to be_a(Array) 
    expect(stock_picker(prices).length).to eq(2)
  end

  it "should return a pair of indices that represent the most profitable pair of days" do
    expect(stock_picker(prices)).to eq([3, 5])
  end

end



