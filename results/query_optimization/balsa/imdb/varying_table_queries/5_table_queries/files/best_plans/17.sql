/*+ MergeJoin(title movie_info_idx cast_info movie_keyword movie_info)
 MergeJoin(title movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_info_idx cast_info)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.kind_id=7 and title.phonetic_code>0;

