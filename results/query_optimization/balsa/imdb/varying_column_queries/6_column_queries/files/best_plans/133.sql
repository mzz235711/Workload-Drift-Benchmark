/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id=3 and title.phonetic_code<20612 and title.kind_id<7 and title.episode_nr<13346 and title.series_years>0;

