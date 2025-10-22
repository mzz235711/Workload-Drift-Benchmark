/*+ MergeJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>4 and movie_companies.company_type_id>1 and title.season_nr=0;

