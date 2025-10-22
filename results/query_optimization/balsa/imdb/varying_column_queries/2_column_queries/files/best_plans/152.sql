/*+ HashJoin(movie_keyword title movie_info movie_companies)
 HashJoin(movie_keyword title movie_info)
 HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 Leading((((movie_keyword title) movie_info) movie_companies)) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.season_nr>0;

