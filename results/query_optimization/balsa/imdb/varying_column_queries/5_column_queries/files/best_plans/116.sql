/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=100 and title.kind_id>1 and title.phonetic_code<353 and title.imdb_index=0 and title.episode_nr>0;

