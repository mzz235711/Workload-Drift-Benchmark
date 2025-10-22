/*+ NestLoop(movie_keyword title cast_info movie_info)
 MergeJoin(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.season_nr=0 and title.kind_id<7 and title.imdb_index>0;

