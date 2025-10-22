/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order>1 and movie_info.info_type_id>2 and title.imdb_index=0;

