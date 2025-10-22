/*+ MergeJoin(cast_info movie_info_idx title movie_companies movie_info)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info ((movie_info_idx title) movie_companies)) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.production_year>35;

