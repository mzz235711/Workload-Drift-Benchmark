/*+ HashJoin(movie_companies movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info (movie_info_idx (title movie_keyword))))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index>0 and title.kind_id=1 and title.production_year<117;

