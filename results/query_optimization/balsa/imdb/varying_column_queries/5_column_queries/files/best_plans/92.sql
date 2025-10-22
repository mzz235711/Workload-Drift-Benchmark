/*+ HashJoin(movie_companies movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_companies (movie_keyword (title cast_info)))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>117 and title.phonetic_code>13431 and title.series_years>0 and title.production_year>105;

