json.recommendations @recommendations do |rec|

	json.id           rec.id
	json.user_id_from rec.user.id
	json.user_id_to   rec.user_id_to
	json.social_media rec.social_media
	json.handle       rec.handle
	# json.is_blog      rec.is_blog
	# json.is_fashion   rec.is_fashion
	# json.is_film      rec.is_film
	# json.is_food      rec.is_food
	# json.is_funny     rec.is_funny
	# json.is_music     rec.is_music
	# json.is_news      rec.is_news
	# json.is_sports    rec.is_sports
	# json.is_tv        rec.is_tv
	json.tags         list_of_tags(rec)

end