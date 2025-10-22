/*+ NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading((((title movie_companies) movie_keyword) movie_info_idx)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<7281 and movie_info_idx.info_type_id>99 and title.imdb_index=2 and title.production_year>125 and title.phonetic_code>1454;

