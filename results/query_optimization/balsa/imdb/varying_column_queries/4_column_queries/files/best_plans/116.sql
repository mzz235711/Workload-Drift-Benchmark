/*+ HashJoin(cast_info title movie_info movie_keyword)
 HashJoin(title movie_info movie_keyword)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading((cast_info ((title movie_info) movie_keyword))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and movie_keyword.keyword_id<65024 and title.season_nr>0 and title.production_year>31;

