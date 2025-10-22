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
select count(*) from movie_keyword,movie_companies,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>117 and movie_companies.company_type_id=2 and movie_info.info_type_id>1 and title.production_year<71 and title.kind_id>1 and title.series_years>0 and title.phonetic_code>1853;

