/*+ HashJoin(movie_companies title movie_keyword movie_info_idx)
 NestLoop(movie_companies title movie_keyword)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading((((movie_companies title) movie_keyword) movie_info_idx)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and title.imdb_index>0 and title.kind_id=1;

