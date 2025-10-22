/*+ MergeJoin(title movie_info_idx movie_keyword movie_info cast_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and cast_info.role_id=9 and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.season_nr<27 and title.phonetic_code<22847 and title.kind_id=7;

