/*+ MergeJoin(cast_info title movie_info_idx movie_companies movie_info)
 MergeJoin(cast_info title movie_info_idx movie_companies)
 MergeJoin(cast_info title movie_info_idx)
 MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((cast_info title) movie_info_idx) movie_companies) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.kind_id<7 and title.series_years<1397;

