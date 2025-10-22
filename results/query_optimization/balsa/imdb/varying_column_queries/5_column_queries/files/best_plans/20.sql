/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and movie_info_idx.info_type_id>99 and title.imdb_index=0 and title.series_years<780 and title.kind_id<2;

