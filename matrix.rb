class Matrix
	def initialize (matrix)
		@matrix = matrix
	end
	def rows
		@matrix.split("\n").map {|row| row.split(" ").map{|num| num.to_i}}
	end
	def columns
		columns = Array.new
		rows.map.with_index {|row, i|
			columns.push(Array.new)
			rows.length.times do |j|
				columns[i].push(rows[j][i])
			end 
		}
		columns
	end
end