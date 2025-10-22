/*+ MergeJoin(movie_info movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_keyword movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (movie_keyword (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<103 and title.kind_id>2;

