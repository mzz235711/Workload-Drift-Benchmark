/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>382 and title.episode_nr>0 and title.production_year<88;

