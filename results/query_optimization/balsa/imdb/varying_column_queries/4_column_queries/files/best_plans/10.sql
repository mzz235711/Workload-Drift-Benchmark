/*+ HashJoin(movie_companies movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_companies (movie_info (movie_info_idx (title movie_keyword))))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>323 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<107 and title.series_years>0;

