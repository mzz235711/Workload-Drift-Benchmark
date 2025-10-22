/*+ NestLoop(title movie_companies movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=2 and movie_keyword.keyword_id<21233 and title.production_year>114 and title.series_years>0 and title.phonetic_code>761;

