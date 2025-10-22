/*+ MergeJoin(cast_info movie_companies title movie_info_idx movie_info)
 HashJoin(cast_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((cast_info (movie_companies (title movie_info_idx))) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.imdb_index=0;

