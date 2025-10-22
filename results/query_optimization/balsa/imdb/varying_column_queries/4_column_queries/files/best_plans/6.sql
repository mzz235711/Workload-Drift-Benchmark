/*+ HashJoin(cast_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword title)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_info_idx.info_type_id=101 and title.kind_id<4 and title.imdb_index=0;

