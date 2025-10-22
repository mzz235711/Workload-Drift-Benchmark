/*+ HashJoin(movie_info_idx title movie_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) movie_companies)) */
select count(*) from movie_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=2 and movie_keyword.keyword_id<21233 and title.production_year>114 and title.series_years>0 and title.phonetic_code>761;

