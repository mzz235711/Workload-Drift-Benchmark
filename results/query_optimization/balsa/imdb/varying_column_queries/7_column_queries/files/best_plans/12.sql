/*+ HashJoin(movie_info movie_keyword movie_info_idx title cast_info)
 HashJoin(movie_keyword movie_info_idx title cast_info)
 HashJoin(movie_info_idx title cast_info)
 HashJoin(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_info_idx (title cast_info))))) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<75448 and movie_info.info_type_id<17 and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.phonetic_code>19715 and title.kind_id=1 and title.production_year>79;

