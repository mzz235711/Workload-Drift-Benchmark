/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.season_nr>0 and title.series_years<1267;

