/*+ HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info_idx (title movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>1138 and title.series_years>0 and title.imdb_index=0;

