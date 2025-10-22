/*+ HashJoin(movie_companies title movie_info_idx movie_info cast_info)
 NestLoop(movie_companies title movie_info_idx movie_info)
 NestLoop(movie_companies title movie_info_idx)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((movie_companies title) movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id>1 and cast_info.nr_order>3 and movie_info.info_type_id<98 and title.imdb_index=0 and title.kind_id>1 and title.episode_nr>0;

