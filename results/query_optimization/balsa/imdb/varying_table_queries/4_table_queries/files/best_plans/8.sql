/*+ NestLoop(movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 Leading(((movie_companies (movie_info_idx title)) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=7;

