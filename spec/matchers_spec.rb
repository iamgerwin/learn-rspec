describe "Matchers" do
	it "asserts on equality" do
		number = 9
		expect(number).to eq 9
	end

	it "asserts on mathematical operators" do
		number = 6
		expect(number).to be >= 5
	end

	it "asserts on matching regular expressions" do
		email = "iamgerwin@aim.com"
		regex = /^\w+@\w+\.[a-z]{2,4}$/

		expect(email).to match regex
	end
	
	it "asserts on types and classes" do
		object = 19.11 #Float

		expect(object).to be_a Numeric # =be_an_instance_of Numeric
	end
	
	it "asserts on truthiness" do
		bool = true #.to be_trurthy
		falsey_bool = false
		nil_value = nil #.to be_falsey

		expect(bool).to be true
	end
	
	it "expects errors" do
		expect do
			raise ArgumentError
		end.to raise_error ArgumentError
	end

	it "expects throws" do
		expect {
			throw :oops
		}.to throw_symbol :oops
	end
	
	it "asserts on predicates" do
		class A
			def good?
				true
			end
		end

		expect(A.new).to be_good
	end

	it "asserts on collections" do
		list = [
			:one,
			:two,
			:three
		]

		expect(list).to include :one #start_with [ :one ]
									 #end_with [ :three ]
	end

	it "negates asserts" do
		expect(11).not_to be 12
	end

end