/*+ HashJoin(movie_keyword title movie_info_idx)
 MergeJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=99 and title.imdb_index=0;

