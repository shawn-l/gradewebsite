News.transaction do
	(1..10).each do |i|
		News.create(	:title => "例子#{i}", 
							 :description => "这是 #{i} 例子"
						)
	end
end