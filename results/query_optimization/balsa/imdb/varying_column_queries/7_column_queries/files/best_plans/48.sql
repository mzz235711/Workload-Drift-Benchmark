/*+ HashJoin(cast_info title movie_info_idx movie_keyword movie_info)
 HashJoin(cast_info title movie_info_idx movie_keyword)
 NestLoop(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((cast_info title) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and cast_info.role_id=1 and movie_info.info_type_id>1 and title.series_years<710 and title.production_year<86 and title.phonetic_code<8132 and title.kind_id<2;

