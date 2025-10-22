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
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and cast_info.nr_order>1 and movie_info.info_type_id<103 and movie_keyword.keyword_id>18623 and title.production_year>126 and title.imdb_index=0;

