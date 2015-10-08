describe "Composable Matchers" do
	it "works with nested data" do
		class Product
			def initiaize id, name, category
				@id = id
				@name = name
				@category = category
			end

			def serial_data
				[
					"X-",
					@name[0],
					@category[0],
					@id
				]
			end
		end

		product = Product.new 2456, "Tomato", "Fruit"

		expect(product.serial_data).to contain_exactly(
			a_string_starting_with("X-"),
			a_string_starting_with("T"),
			a_string_starting_with("F"),
			a_value < 5000
		)

		# Matchers
		# ---------
		# change
		# contain_exaclty
		#include
		# yield_with_args(a_string_starting_with, a_hash_including())
		#
		# Matchers arguments
		# ---------
		#
		# a_string_starting_with/ending_with
		# a_hash
		# a_value_within(0.5).of(3.145)  3.14 ~ 3.15
		# an_instance_of(Hash)
	end

	it "compound matchers" do
		string = "Gerwin"

		expect(string).to start_with("G").and end_with("n")
		expect(50).to eq(20).or eq(50)
	end
end