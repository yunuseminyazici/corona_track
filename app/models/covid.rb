class Covid < ApplicationRecord

def self.search(params)
	where("id LIKE ?","#{params}")
end

def self.search2(params2)
	where("id LIKE ?","#{params2}")
end
end
