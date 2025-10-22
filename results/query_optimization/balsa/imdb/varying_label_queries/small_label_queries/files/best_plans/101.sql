/*+ NestLoop(movie_info_idx movie_companies title)
 NestLoop(movie_info_idx movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 Leading(((movie_info_idx movie_companies) title)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND movie_info_idx.info_type_id>101 AND movie_companies.company_type_id=1 AND title.imdb_index<19;

