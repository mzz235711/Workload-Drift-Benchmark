/*+ HashJoin(movie_companies movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_companies (movie_info_idx title))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.production_year>0;

