/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 HashJoin(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and cast_info.nr_order<31 and title.season_nr=0 and title.kind_id>3 and title.production_year>95 and title.phonetic_code<11919;

