/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.series_years<1381 and title.production_year<126 and title.kind_id>1;

