/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.production_year>56 and title.kind_id=7 and title.series_years<1400;

