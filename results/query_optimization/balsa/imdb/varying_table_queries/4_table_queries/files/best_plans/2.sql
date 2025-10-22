/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((movie_info ((movie_info_idx title) movie_companies))) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.production_year>0;

