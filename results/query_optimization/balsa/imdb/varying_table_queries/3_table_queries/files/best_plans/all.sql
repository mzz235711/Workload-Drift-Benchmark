/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id<36919 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<124 and title.episode_nr>1;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>15857 and title.production_year<124 and title.series_years>0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.production_year>100 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.episode_nr<16;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.phonetic_code>0 and title.episode_nr<29 and title.production_year<123 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.kind_id>1 and title.production_year>0 and title.phonetic_code>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.phonetic_code<20431 and title.episode_nr<26 and title.kind_id>1 and title.production_year>53;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>7821;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id=1 and title.imdb_index=0 and title.season_nr>9 and title.production_year>121;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.role_id=1 and title.episode_nr>14;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<98 and title.production_year<78 and title.series_years>498;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.phonetic_code<18522 and title.series_years>0 and title.imdb_index>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>826 and movie_info.info_type_id<98 and title.production_year>125 and title.episode_nr<3 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.production_year>0 and title.phonetic_code<20434;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<32552 and title.season_nr=1 and title.episode_nr<4;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.episode_nr<1552 and title.season_nr>0 and title.series_years<1400;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.phonetic_code>0;

/*+ HashJoin(cast_info movie_companies title)
 MergeJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.phonetic_code<21691 and title.series_years<1374;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id=2 and title.season_nr<12;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.kind_id=7;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.production_year<125;

/*+ NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((movie_info_idx title) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<105 and title.phonetic_code>0;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.episode_nr>0 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0 and title.phonetic_code<21655 and title.episode_nr<84;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.episode_nr<108;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>73 and title.production_year>117 and title.episode_nr<20 and title.kind_id<7;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and cast_info.role_id<10 and title.series_years>0 and title.phonetic_code>16042 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.production_year<124;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.series_years>0;

/*+ HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_info_idx title))) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index=0 and title.phonetic_code<20763;

/*+ NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=8 and title.phonetic_code>9553 and title.season_nr>1 and title.episode_nr<7 and title.production_year>124;

/*+ NestLoop(movie_companies title movie_info)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((movie_companies title) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and title.season_nr=0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.series_years>0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.production_year<126 and title.season_nr<5;

/*+ HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (movie_info_idx title))) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.series_years<1403;

/*+ NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((movie_info_idx title) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<6505;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.season_nr=1 and title.phonetic_code>14400 and title.episode_nr>11;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.production_year>118 and title.kind_id<2;

/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>46;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>3 and title.series_years>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.kind_id>1 and title.production_year>62;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code>0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and title.kind_id=7;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id<31642 and title.phonetic_code<16815 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.season_nr=1;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.episode_nr<33 and title.season_nr=1 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<65045 and title.imdb_index>0;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.episode_nr>0;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<50138 and movie_companies.company_type_id>1 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.production_year<90;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year>123;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>3 and title.series_years>0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.production_year<122 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<4 and title.production_year<120 and title.phonetic_code<20495;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>232 and title.kind_id>1 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<35759 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx cast_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.series_years>0;

/*+ HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.episode_nr<21;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=2 and title.production_year<126 and title.season_nr<3;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.series_years<1267 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.season_nr<1 and title.phonetic_code>0 and title.kind_id>1 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.episode_nr>0;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.phonetic_code>0 and title.production_year<125 and title.kind_id<7;

/*+ NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((movie_companies title) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.season_nr<9;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and title.season_nr=1 and title.imdb_index=0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.production_year<106 and title.kind_id=3;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.phonetic_code>18258;

/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.series_years<1387 and title.production_year<124;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr>0 and title.production_year<122;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<71480 and movie_info.info_type_id>15 and title.production_year>124 and title.phonetic_code>3116 and title.season_nr>0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.season_nr=1 and title.production_year<126 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>250 and title.production_year<126 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id>1 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code<22826 and title.episode_nr>0 and title.production_year>0;

/*+ NestLoop(title movie_info movie_companies)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.kind_id=2 and title.imdb_index>0 and title.phonetic_code>0 and title.series_years<1403;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<17 and title.season_nr>1 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id>2488 and title.series_years>0 and title.production_year>112;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr>0 and title.episode_nr<18;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.episode_nr<12 and title.production_year>82 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>262 and title.season_nr=1;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id>2 and title.imdb_index>0 and title.series_years<1393 and title.kind_id>2;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<110 and title.production_year>124 and title.phonetic_code>17552;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.episode_nr<6370 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.season_nr>0 and title.series_years>0;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<9 and title.episode_nr>16;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.imdb_index=0 and title.kind_id=7 and title.production_year<126 and title.phonetic_code<21022;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.season_nr=0 and title.imdb_index>0 and title.phonetic_code>0;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>875 and title.season_nr=0 and title.phonetic_code<16946 and title.kind_id=1 and title.production_year>114;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id>99 and title.imdb_index=0;

/*+ HashJoin(movie_info cast_info title)
 MergeJoin(cast_info title)
 IndexScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (cast_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.kind_id<7 and title.episode_nr<42;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.kind_id=1 and title.series_years<1357 and title.production_year>72 and title.phonetic_code<14738;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.kind_id=1 and title.phonetic_code>7311 and title.season_nr=0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and title.imdb_index>0 and title.season_nr<6 and title.production_year<113 and title.phonetic_code<18353;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.phonetic_code>0 and title.imdb_index=0 and title.series_years<990 and title.kind_id<7;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.imdb_index=0 and title.episode_nr<188 and title.phonetic_code<14779;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<15 and title.kind_id=7 and title.production_year<125 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index>0;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<33 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.imdb_index=0 and title.series_years<1374 and title.production_year>121;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<101 and title.phonetic_code<15669;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr<1 and title.production_year<125;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id=2 and title.season_nr=2 and title.phonetic_code>2395 and title.episode_nr<21;

/*+ HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<29 and title.kind_id<7;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>927 and title.phonetic_code<11299 and title.production_year>115;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.episode_nr>0;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.imdb_index>0 and title.phonetic_code<1577;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.kind_id=7;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<18257;

/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr>0 and title.phonetic_code<16517;

/*+ NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((movie_companies title) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.episode_nr<3;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.production_year>63 and title.season_nr<7;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<10 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year<113;

/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.season_nr=0 and title.kind_id>1;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.season_nr=1 and title.imdb_index=0 and title.phonetic_code<543;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.kind_id<7 and title.phonetic_code>0 and title.production_year<125;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_keyword.keyword_id>5450 and title.production_year<107 and title.phonetic_code<3913 and title.kind_id>3;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.series_years>0;

/*+ NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.series_years>1196 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<19864 and title.series_years>0 and title.imdb_index=0 and title.episode_nr<106;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.imdb_index=0 and title.season_nr=0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and title.production_year>50 and title.kind_id>1 and title.phonetic_code>11913 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.series_years>0;

/*+ NestLoop(title movie_info_idx cast_info)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_info_idx.info_type_id=99 and title.production_year<107;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<31 and title.series_years>0 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code<19929;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.season_nr<5;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.episode_nr>624 and title.phonetic_code>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.imdb_index=0 and title.kind_id<7 and title.episode_nr<7293;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and movie_keyword.keyword_id>2488 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>65 and movie_companies.company_type_id=2 and title.phonetic_code>5262 and title.production_year<117;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.production_year<126;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<44 and movie_companies.company_type_id>1 and title.kind_id=7 and title.series_years>0;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.nr_order<14 and title.season_nr=2 and title.production_year<103 and title.phonetic_code<16066 and title.episode_nr<12;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.production_year>37 and title.phonetic_code<142 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<18 and title.phonetic_code<11950 and title.kind_id=7 and title.production_year>113 and title.season_nr=28;

/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index=0;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>275 and title.kind_id<6 and title.series_years>0 and title.phonetic_code<1362;

/*+ NestLoop(movie_companies title movie_info)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((movie_companies title) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and title.episode_nr>5;

/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.phonetic_code<12452 and title.imdb_index=0 and title.season_nr>0;

/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<106 and title.phonetic_code<14703;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>1 and title.kind_id<4;

/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.production_year<123 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code>0;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<17 and title.production_year>61;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<107 and title.episode_nr>0 and title.phonetic_code<17199;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.production_year<127;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code<19644;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=99 and title.series_years<1397;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id>1 and title.season_nr>1;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.imdb_index>0 and title.season_nr=0;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>117 and movie_companies.company_type_id=1 and title.phonetic_code<6678 and title.episode_nr>0;

/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<16 and title.kind_id>1;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<100 and movie_info.info_type_id>2 and title.season_nr=0 and title.kind_id>1;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.imdb_index>0 and title.phonetic_code<19874;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.phonetic_code>1459 and title.season_nr<3;

/*+ NestLoop(title movie_info_idx cast_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.role_id=8 and title.production_year<107 and title.kind_id=1;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.imdb_index=0 and title.season_nr>0 and title.kind_id>1;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.episode_nr<112 and title.series_years>0 and title.kind_id=7 and title.phonetic_code<18354;

/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.production_year>118;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<33 and movie_info.info_type_id>1 and title.kind_id>1 and title.imdb_index=1 and title.phonetic_code>3013;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year>106 and title.phonetic_code>2871;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index=0 and title.production_year<121;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code>0;

/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and cast_info.role_id=10 and title.production_year<108 and title.imdb_index>0;

/*+ HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year>49;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.episode_nr<34;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.phonetic_code<2850 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.production_year<103 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0 and title.series_years<195 and title.episode_nr<49;

/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.phonetic_code<19887 and title.episode_nr<14 and title.imdb_index=0 and title.season_nr<8;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=100 and title.series_years>0;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code>0;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.episode_nr>7;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<94 and title.season_nr>2;

/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and title.season_nr=3 and title.phonetic_code>0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>0 and movie_companies.company_type_id=1 and title.kind_id=1 and title.phonetic_code<761 and title.production_year>124 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<17075;

/*+ HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((movie_info (title cast_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>13 and title.production_year>100;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>8221 and title.series_years>0;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.production_year>66;

/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.production_year>72;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<1002 and title.production_year>108;

/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>3494 and title.series_years>1324 and title.imdb_index=0;

/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.series_years>0 and title.phonetic_code>0 and title.episode_nr>0 and title.production_year<126;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.episode_nr<23 and title.imdb_index=0 and title.production_year>112 and title.kind_id=7;

/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr<123;

