/*+ NestLoop(title movie_companies movie_keyword movie_info cast_info)
 NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<87762 and movie_info.info_type_id>1 and movie_companies.company_type_id=2 and title.production_year>105 and title.series_years>0 and title.imdb_index>0 and title.phonetic_code<17703;

