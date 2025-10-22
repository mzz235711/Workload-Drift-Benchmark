/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.series_years>0 and title.production_year>34;

