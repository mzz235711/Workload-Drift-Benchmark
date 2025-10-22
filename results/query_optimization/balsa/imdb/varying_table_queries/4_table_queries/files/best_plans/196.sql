/*+ HashJoin(title cast_info movie_keyword movie_info)
 HashJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id<9 and movie_info.info_type_id>2 and title.season_nr<14;

