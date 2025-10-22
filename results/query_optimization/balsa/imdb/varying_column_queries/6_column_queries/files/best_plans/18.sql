/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<128486 and movie_companies.company_type_id>1 and movie_info.info_type_id>1 and title.kind_id=4 and title.phonetic_code>1196 and title.imdb_index>0;

