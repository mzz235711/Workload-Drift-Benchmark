/*+ HashJoin(title cast_info movie_keyword movie_info)
 HashJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<118;

