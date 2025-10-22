/*+ MergeJoin(movie_info_idx title movie_info cast_info movie_keyword)
 MergeJoin(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading((((movie_info_idx (title movie_info)) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info_idx.info_type_id<101 and title.phonetic_code<10826;

