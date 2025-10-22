/*+ HashJoin(title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.production_year>17 and title.season_nr<7 and title.series_years<1296 and title.kind_id>1;

