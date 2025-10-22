/*+ NestLoop(movie_keyword title cast_info movie_info)
 NestLoop(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and cast_info.role_id=4 and title.season_nr=0 and title.series_years>0;

