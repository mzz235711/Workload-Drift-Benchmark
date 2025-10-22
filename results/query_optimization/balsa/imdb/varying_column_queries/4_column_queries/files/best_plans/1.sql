/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and cast_info.role_id<10 and movie_keyword.keyword_id>4032 and title.production_year<104;

