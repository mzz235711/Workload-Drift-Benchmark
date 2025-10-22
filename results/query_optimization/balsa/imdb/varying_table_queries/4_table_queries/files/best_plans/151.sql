/*+ NestLoop(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<103 and movie_companies.company_type_id<2 and title.series_years>0 and title.production_year<122 and title.imdb_index>0 and title.phonetic_code>5789;

