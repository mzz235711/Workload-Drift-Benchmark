/*+ HashJoin(movie_info movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<22515 and title.production_year>122;

