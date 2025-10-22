/*+ NestLoop(movie_info title movie_info_idx movie_keyword cast_info)
 HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_info_idx) movie_keyword)) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr<104 and title.phonetic_code>0 and title.kind_id=4 and title.imdb_index>0;

