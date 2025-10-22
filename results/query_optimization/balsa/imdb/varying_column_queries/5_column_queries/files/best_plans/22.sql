/*+ HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info ((movie_info_idx title) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<95849 and movie_info.info_type_id<96 and title.imdb_index=0 and title.kind_id=1 and title.production_year<61;

