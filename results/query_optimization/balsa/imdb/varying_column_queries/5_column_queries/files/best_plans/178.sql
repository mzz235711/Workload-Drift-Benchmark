/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_keyword.keyword_id<2546 and title.imdb_index>0 and title.production_year>81 and title.season_nr=0;

