/*+ NestLoop(title movie_keyword movie_companies cast_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_companies) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.role_id>1 and title.production_year>92 and title.kind_id=3;

