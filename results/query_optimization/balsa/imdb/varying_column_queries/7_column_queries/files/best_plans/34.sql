/*+ HashJoin(title movie_info_idx cast_info movie_keyword movie_info)
 NestLoop(title movie_info_idx cast_info movie_keyword)
 HashJoin(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<48 and movie_info.info_type_id<98 and movie_info_idx.info_type_id<101 and title.phonetic_code<17315 and title.production_year<125 and title.kind_id>1 and title.episode_nr<115;

