require_relative 'lib/node'
require_relative 'lib/linked_list'

# --------------------------
# PRUEBAS ESTILO RSpec VISUAL
# --------------------------

def it(description)
  print "- #{description}... "
  yield
  puts "✔️"
rescue => e
  puts "❌ (#{e.message})"
end

def expect(actual)
  Expectation.new(actual)
end

class Expectation
  def initialize(actual)
    @actual = actual
  end

  def to_eq(expected)
    raise "Expected #{expected.inspect}, got #{@actual.inspect}" unless @actual == expected
  end

  def to_be_true
    raise "Expected true, got #{@actual.inspect}" unless @actual == true
  end

  def to_be_false
    raise "Expected false, got #{@actual.inspect}" unless @actual == false
  end
end

# --------------------------
# TESTS
# --------------------------

list = LinkedList.new

it("append adds elements to the end") do
  list.append("A")
  list.append("B")
  list.append("C")
  expect(list.to_s).to_eq("( A ) -> ( B ) -> ( C ) -> nil")
end

it("prepend adds element to the beginning") do
  list.prepend("Start")
  expect(list.to_s).to_eq("( Start ) -> ( A ) -> ( B ) -> ( C ) -> nil")
end

it("size returns the correct size") do
  expect(list.size).to_eq(4)
end

it("tail returns the last node") do
  expect(list.tail.value).to_eq("C")
end

it("at returns the correct node at index") do
  expect(list.at(0).value).to_eq("Start")
  expect(list.at(2).value).to_eq("B")
end

it("at returns nil for out-of-range index") do
  expect(list.at(10)).to_eq(nil)
end

it("pop removes the last element") do
  list.pop
  expect(list.to_s).to_eq("( Start ) -> ( A ) -> ( B ) -> nil")
end

it("contains? returns true if value exists") do
  expect(list.contains?("B")).to_be_true
end

it("contains? returns false if value doesn't exist") do
  expect(list.contains?("Z")).to_be_false
end

it("find returns the index of the value") do
  expect(list.find("B")).to_eq(2)
end

it("find returns nil if value is not found") do
  expect(list.find("Z")).to_eq(nil)
end

it("insert_at inserts element at specific index") do
  list.insert_at("New", 2)
  expect(list.to_s).to_eq("( Start ) -> ( A ) -> ( New ) -> ( B ) -> nil")
end

it("remove_at removes element at specific index") do
  list.remove_at(1)
  expect(list.to_s).to_eq("( Start ) -> ( New ) -> ( B ) -> nil")
end

it("remove_at with index 0 removes head") do
  list.remove_at(0)
  expect(list.to_s).to_eq("( New ) -> ( B ) -> nil")
end

it("insert_at with index 0 prepends") do
  list.insert_at("X", 0)
  expect(list.to_s).to_eq("( X ) -> ( New ) -> ( B ) -> nil")
end

it("final size is correct") do
  expect(list.size).to_eq(3)
end
