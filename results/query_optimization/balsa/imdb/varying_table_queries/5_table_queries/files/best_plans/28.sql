/*+ HashJoin(movie_keyword cast_info movie_info_idx title movie_companies)
 MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (cast_info ((movie_info_idx title) movie_companies)))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>0 and title.series_years<1296;

