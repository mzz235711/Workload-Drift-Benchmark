/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>2 and title.kind_id<2 and title.production_year>116 and title.imdb_index=0;

