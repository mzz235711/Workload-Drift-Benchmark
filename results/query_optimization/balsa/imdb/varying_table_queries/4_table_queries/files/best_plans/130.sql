/*+ NestLoop(movie_keyword title cast_info movie_info)
 NestLoop(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id=1 and title.series_years>0 and title.production_year>73 and title.season_nr>0;

