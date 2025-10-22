/*+ HashJoin(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_keyword (title movie_companies)) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.season_nr=0 and title.production_year>91;

