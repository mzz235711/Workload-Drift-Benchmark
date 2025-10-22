/*+ MergeJoin(title movie_companies movie_keyword movie_info cast_info)
 NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>230 and movie_companies.company_type_id=2 and cast_info.nr_order<1001 and title.production_year<123 and title.phonetic_code>6244 and title.kind_id=7 and title.season_nr=5;

