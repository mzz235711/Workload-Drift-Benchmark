/*+ HashJoin(movie_info movie_info_idx title movie_companies cast_info)
 HashJoin(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (((movie_info_idx title) movie_companies) cast_info))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<74 and movie_companies.company_type_id<2 and title.production_year>118;

