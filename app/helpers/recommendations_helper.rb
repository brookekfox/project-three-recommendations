module RecommendationsHelper

	def list_of_tags(rec)
		list = []
		if rec.is_blog == true
			list << 'blog'
		end
		if rec.is_fashion == true
			list << 'fashion'
		end
		if rec.is_film == true
			list << 'film'
		end
		if rec.is_food == true
			list << 'food'
		end
		if rec.is_funny == true
			list << 'funny'
		end
		if rec.is_music == true
			list << 'music'
		end
		if rec.is_news == true
			list << 'news'
		end
		if rec.is_sports == true
			list << 'sports'
		end
		if rec.is_tv == true
			list << 'tv'
		end
		return list
	end

end
