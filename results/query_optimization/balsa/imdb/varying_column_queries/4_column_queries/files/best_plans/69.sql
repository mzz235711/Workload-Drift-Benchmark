/*+ HashJoin(cast_info movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_keyword title)))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id=1 and title.series_years>0 and title.production_year>73 and title.season_nr>0;

