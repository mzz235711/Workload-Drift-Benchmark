/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and title.production_year>84 and title.kind_id>1 and title.imdb_index>0;

