/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_keyword.keyword_id<29072 and title.imdb_index>0 and title.kind_id=1;

