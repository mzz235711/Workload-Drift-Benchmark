/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_companies title) movie_info_idx)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.imdb_index=0 and title.season_nr>0 and title.production_year>0 and title.kind_id=7;

