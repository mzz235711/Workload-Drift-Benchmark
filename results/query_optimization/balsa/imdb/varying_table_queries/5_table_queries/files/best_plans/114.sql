/*+ HashJoin(movie_info_idx title cast_info movie_info movie_companies)
 HashJoin(movie_info_idx title cast_info movie_info)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading(((movie_info_idx ((title cast_info) movie_info)) movie_companies)) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order<1 and title.kind_id<7 and title.episode_nr<18;

