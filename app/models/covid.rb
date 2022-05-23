class Covid < ApplicationRecord

def self.search(params)
	where("id LIKE ?","#{params}")
end

def self.search1(params)
	where("BL LIKE ?","%#{params}%")
end

def self.search2(params)
	where("created_at LIKE ?","%#{params}%")
end

def formatted_date
	attributes['created_at'].to_date
end

end

