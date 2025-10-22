/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<62 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>368 AND u.DownVotes<1589 AND v.CreationDate>'2012-03-05 05:27:02'::timestamp AND v.CreationDate<'2013-03-08 04:49:36'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-09-18 19:32:36'::timestamp AND b.Date<'2014-04-19 18:35:24'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<153 AND p.CommentCount>8 AND p.CommentCount<44 AND u.DownVotes>201 AND u.DownVotes<1449 AND v.CreationDate>'2010-03-08 01:46:58'::timestamp AND v.CreationDate<'2014-01-08 11:57:04'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-08-20 00:45:03'::timestamp AND b.Date<'2013-06-06 08:57:16'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>78 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<37 AND u.DownVotes>37 AND u.DownVotes<1625 AND v.CreationDate>'2012-03-27 06:40:59'::timestamp AND v.CreationDate<'2013-02-22 06:28:30'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-12-24 13:45:10'::timestamp AND b.Date<'2013-03-25 09:00:00'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<164 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>413 AND u.DownVotes<1607 AND v.CreationDate>'2013-06-22 00:22:02'::timestamp AND v.CreationDate<'2014-01-26 01:50:54'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-02-14 13:14:06'::timestamp AND b.Date<'2013-10-26 06:50:37'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>372 AND u.DownVotes<994 AND v.CreationDate>'2011-01-13 05:48:30'::timestamp AND v.CreationDate<'2013-08-07 05:43:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-11-17 17:34:08'::timestamp AND b.Date<'2012-11-02 13:19:18'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<44 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>723 AND u.DownVotes<1767 AND v.CreationDate>'2010-01-04 11:12:10'::timestamp AND v.CreationDate<'2011-08-18 00:32:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-03-28 19:25:43'::timestamp AND b.Date<'2014-06-12 23:19:18'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<80 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>283 AND u.DownVotes<1674 AND v.CreationDate>'2010-09-01 01:51:40'::timestamp AND v.CreationDate<'2011-03-31 02:40:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-07-09 21:58:51'::timestamp AND b.Date<'2012-06-07 10:20:33'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<33 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>102 AND u.DownVotes<1215 AND v.CreationDate>'2011-02-13 11:39:44'::timestamp AND v.CreationDate<'2014-04-26 05:55:30'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-03-03 16:20:01'::timestamp AND b.Date<'2013-01-05 19:39:30'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<62 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>421 AND u.DownVotes<845 AND v.CreationDate>'2012-01-20 15:45:26'::timestamp AND v.CreationDate<'2014-04-25 12:26:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-12-01 10:28:05'::timestamp AND b.Date<'2014-02-06 17:18:23'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<63 AND p.CommentCount>7 AND p.CommentCount<11 AND u.DownVotes>26 AND u.DownVotes<1577 AND v.CreationDate>'2009-09-18 12:18:56'::timestamp AND v.CreationDate<'2014-03-19 13:58:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-02-08 23:59:27'::timestamp AND b.Date<'2011-05-10 10:16:28'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<44 AND p.CommentCount>11 AND p.CommentCount<29 AND u.DownVotes>365 AND u.DownVotes<1205 AND v.CreationDate>'2009-08-13 02:44:09'::timestamp AND v.CreationDate<'2013-12-07 16:59:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2012-08-31 09:42:27'::timestamp AND b.Date<'2014-01-17 08:26:49'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<123 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>689 AND u.DownVotes<1073 AND v.CreationDate>'2010-10-17 03:10:18'::timestamp AND v.CreationDate<'2012-09-23 21:27:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-07-30 05:21:52'::timestamp AND b.Date<'2013-01-07 16:00:46'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<126 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>102 AND u.DownVotes<1191 AND v.CreationDate>'2011-03-04 07:59:26'::timestamp AND v.CreationDate<'2013-08-01 00:57:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-08-06 16:25:48'::timestamp AND b.Date<'2014-01-28 19:47:13'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<89 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>620 AND u.DownVotes<1124 AND v.CreationDate>'2010-07-15 02:13:24'::timestamp AND v.CreationDate<'2013-07-19 09:07:49'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2013-01-13 00:51:21'::timestamp AND b.Date<'2014-04-19 15:06:42'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<170 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>84 AND u.DownVotes<858 AND v.CreationDate>'2009-10-03 15:20:40'::timestamp AND v.CreationDate<'2013-10-21 13:35:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-02-09 13:45:07'::timestamp AND b.Date<'2013-09-05 23:09:26'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>96 AND p.Score<111 AND p.CommentCount>5 AND p.CommentCount<24 AND u.DownVotes>55 AND u.DownVotes<813 AND v.CreationDate>'2011-10-10 05:40:24'::timestamp AND v.CreationDate<'2012-05-31 16:41:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-01-21 04:57:58'::timestamp AND b.Date<'2014-08-16 10:27:09'::timestamp;

/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<106 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>557 AND u.DownVotes<795 AND v.CreationDate>'2010-07-08 10:19:20'::timestamp AND v.CreationDate<'2012-02-24 23:43:35'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2011-09-03 05:57:21'::timestamp AND b.Date<'2011-11-16 02:28:13'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<118 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>235 AND u.DownVotes<1214 AND v.CreationDate>'2010-03-30 21:59:14'::timestamp AND v.CreationDate<'2012-05-01 15:25:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-02-14 20:39:38'::timestamp AND b.Date<'2013-03-02 00:20:27'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<68 AND p.CommentCount>11 AND p.CommentCount<14 AND u.DownVotes>90 AND u.DownVotes<843 AND v.CreationDate>'2010-12-01 02:50:58'::timestamp AND v.CreationDate<'2012-03-02 23:26:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-02-21 00:55:18'::timestamp AND b.Date<'2011-08-19 07:20:10'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<42 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>129 AND u.DownVotes<425 AND v.CreationDate>'2011-04-15 12:18:41'::timestamp AND v.CreationDate<'2012-05-15 09:07:05'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-10-05 13:21:00'::timestamp AND b.Date<'2013-07-15 14:03:24'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<155 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>637 AND u.DownVotes<899 AND v.CreationDate>'2011-01-10 03:13:09'::timestamp AND v.CreationDate<'2013-08-22 07:37:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2010-12-24 09:30:34'::timestamp AND b.Date<'2012-12-06 17:33:30'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<150 AND p.CommentCount>12 AND p.CommentCount<29 AND u.DownVotes>186 AND u.DownVotes<879 AND v.CreationDate>'2011-06-22 19:04:40'::timestamp AND v.CreationDate<'2014-05-21 16:20:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-10-23 02:43:03'::timestamp AND b.Date<'2013-06-29 16:44:55'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<37 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>162 AND u.DownVotes<937 AND v.CreationDate>'2011-08-23 01:27:09'::timestamp AND v.CreationDate<'2013-02-06 22:04:03'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-03-30 20:58:33'::timestamp AND b.Date<'2014-02-14 19:12:07'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<137 AND p.CommentCount>19 AND p.CommentCount<36 AND u.DownVotes>75 AND u.DownVotes<388 AND v.CreationDate>'2009-09-12 16:59:46'::timestamp AND v.CreationDate<'2014-05-13 23:53:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-11-11 10:29:16'::timestamp AND b.Date<'2014-08-05 06:31:10'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<104 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>349 AND u.DownVotes<1667 AND v.CreationDate>'2012-08-21 01:19:24'::timestamp AND v.CreationDate<'2014-03-06 15:28:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-02 19:43:27'::timestamp AND b.Date<'2011-09-28 15:20:12'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<175 AND p.CommentCount>19 AND p.CommentCount<23 AND u.DownVotes>137 AND u.DownVotes<1898 AND v.CreationDate>'2011-11-27 17:26:17'::timestamp AND v.CreationDate<'2013-07-06 11:38:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-04-05 13:44:32'::timestamp AND b.Date<'2014-02-22 05:19:36'::timestamp;

/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<89 AND p.CommentCount>2 AND p.CommentCount<44 AND u.DownVotes>291 AND u.DownVotes<565 AND v.CreationDate>'2010-04-02 21:24:32'::timestamp AND v.CreationDate<'2012-08-05 15:42:33'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-01-03 08:20:01'::timestamp AND b.Date<'2013-02-09 13:48:00'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<189 AND p.CommentCount>12 AND p.CommentCount<34 AND u.DownVotes>26 AND u.DownVotes<359 AND v.CreationDate>'2011-06-12 08:49:11'::timestamp AND v.CreationDate<'2014-07-21 00:04:17'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-09-22 18:59:28'::timestamp AND b.Date<'2012-05-18 15:31:55'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<127 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>662 AND u.DownVotes<1031 AND v.CreationDate>'2012-07-19 11:51:11'::timestamp AND v.CreationDate<'2013-10-21 08:02:26'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2011-02-20 16:20:37'::timestamp AND b.Date<'2014-09-02 11:39:47'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<178 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>135 AND u.DownVotes<1103 AND v.CreationDate>'2011-03-28 18:21:40'::timestamp AND v.CreationDate<'2013-12-01 20:46:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-11-08 23:45:41'::timestamp AND b.Date<'2014-02-06 01:45:46'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<24 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>386 AND u.DownVotes<1091 AND v.CreationDate>'2009-05-25 14:35:16'::timestamp AND v.CreationDate<'2013-08-16 14:13:05'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-05-18 14:18:19'::timestamp AND b.Date<'2013-03-28 20:59:47'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<70 AND p.CommentCount>14 AND p.CommentCount<23 AND u.DownVotes>176 AND u.DownVotes<757 AND v.CreationDate>'2010-02-09 05:50:12'::timestamp AND v.CreationDate<'2014-02-13 16:30:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-03-20 12:38:49'::timestamp AND b.Date<'2012-06-04 01:16:49'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<32 AND p.CommentCount>20 AND p.CommentCount<34 AND u.DownVotes>0 AND u.DownVotes<528 AND v.CreationDate>'2011-07-05 17:25:45'::timestamp AND v.CreationDate<'2014-05-21 05:06:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-12-20 10:25:01'::timestamp AND b.Date<'2014-01-13 21:08:53'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<161 AND p.CommentCount>1 AND p.CommentCount<4 AND u.DownVotes>691 AND u.DownVotes<1019 AND v.CreationDate>'2011-08-08 17:33:04'::timestamp AND v.CreationDate<'2014-04-06 09:33:00'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-11-24 20:58:28'::timestamp AND b.Date<'2013-02-28 08:06:40'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<46 AND p.CommentCount>4 AND p.CommentCount<16 AND u.DownVotes>504 AND u.DownVotes<1677 AND v.CreationDate>'2011-04-15 19:44:45'::timestamp AND v.CreationDate<'2012-09-11 23:55:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2013-01-25 14:17:24'::timestamp AND b.Date<'2013-08-29 16:28:11'::timestamp;

/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<15 AND p.CommentCount>0 AND p.CommentCount<12 AND u.DownVotes>0 AND u.DownVotes<1315 AND v.CreationDate>'2010-09-23 04:48:15'::timestamp AND v.CreationDate<'2013-01-31 18:12:13'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2014-03-11 15:49:40'::timestamp AND b.Date<'2014-06-05 22:49:48'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<21 AND p.CommentCount>1 AND p.CommentCount<21 AND u.DownVotes>235 AND u.DownVotes<858 AND v.CreationDate>'2009-11-03 23:53:28'::timestamp AND v.CreationDate<'2013-01-29 05:49:38'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2012-06-12 00:37:00'::timestamp AND b.Date<'2013-04-19 22:06:34'::timestamp;

/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<100 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>423 AND u.DownVotes<839 AND v.CreationDate>'2010-02-07 14:21:43'::timestamp AND v.CreationDate<'2011-06-15 02:28:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-09-29 19:18:14'::timestamp AND b.Date<'2013-01-04 12:48:59'::timestamp;

/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<147 AND p.CommentCount>5 AND p.CommentCount<31 AND u.DownVotes>59 AND u.DownVotes<850 AND v.CreationDate>'2010-01-07 03:07:43'::timestamp AND v.CreationDate<'2010-12-05 13:53:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-03-13 15:23:33'::timestamp AND b.Date<'2013-06-03 19:33:24'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<111 AND p.CommentCount>15 AND p.CommentCount<43 AND u.DownVotes>66 AND u.DownVotes<1318 AND v.CreationDate>'2011-03-24 11:15:41'::timestamp AND v.CreationDate<'2012-12-16 01:25:15'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-11-19 07:52:09'::timestamp AND b.Date<'2013-05-26 06:51:53'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>136 AND p.Score<144 AND p.CommentCount>8 AND p.CommentCount<26 AND u.DownVotes>46 AND u.DownVotes<1494 AND v.CreationDate>'2009-07-30 17:07:47'::timestamp AND v.CreationDate<'2014-05-11 09:49:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-07-04 01:05:37'::timestamp AND b.Date<'2013-09-09 11:41:57'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<115 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>667 AND u.DownVotes<930 AND v.CreationDate>'2009-03-27 01:28:59'::timestamp AND v.CreationDate<'2010-11-11 19:58:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-09-01 12:38:22'::timestamp AND b.Date<'2011-03-01 00:43:55'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<42 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>110 AND u.DownVotes<1493 AND v.CreationDate>'2011-04-27 17:13:06'::timestamp AND v.CreationDate<'2013-02-16 11:22:52'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-08-22 01:12:32'::timestamp AND b.Date<'2014-04-13 04:30:41'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>57 AND u.DownVotes<973 AND v.CreationDate>'2011-10-23 23:20:36'::timestamp AND v.CreationDate<'2012-03-20 06:06:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-01-05 23:19:18'::timestamp AND b.Date<'2012-08-28 04:08:47'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<186 AND p.CommentCount>5 AND p.CommentCount<23 AND u.DownVotes>82 AND u.DownVotes<1495 AND v.CreationDate>'2009-10-02 15:32:32'::timestamp AND v.CreationDate<'2012-06-26 07:03:45'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2012-04-24 21:33:00'::timestamp AND b.Date<'2013-06-30 20:49:56'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<125 AND p.CommentCount>10 AND p.CommentCount<40 AND u.DownVotes>656 AND u.DownVotes<990 AND v.CreationDate>'2009-11-23 18:35:21'::timestamp AND v.CreationDate<'2013-04-02 01:55:44'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-12-02 01:21:47'::timestamp AND b.Date<'2012-10-08 19:57:12'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<189 AND p.CommentCount>3 AND p.CommentCount<9 AND u.DownVotes>735 AND u.DownVotes<1440 AND v.CreationDate>'2012-10-31 15:23:19'::timestamp AND v.CreationDate<'2012-12-26 09:34:28'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-10-21 04:28:03'::timestamp AND b.Date<'2013-02-04 03:00:45'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>77 AND p.Score<131 AND p.CommentCount>6 AND p.CommentCount<19 AND u.DownVotes>278 AND u.DownVotes<1327 AND v.CreationDate>'2009-05-04 11:47:48'::timestamp AND v.CreationDate<'2014-08-15 12:06:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-11-29 06:58:30'::timestamp AND b.Date<'2013-12-09 02:50:46'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<42 AND p.CommentCount>14 AND p.CommentCount<33 AND u.DownVotes>156 AND u.DownVotes<1713 AND v.CreationDate>'2011-05-22 22:27:09'::timestamp AND v.CreationDate<'2011-08-01 08:30:12'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-12-09 12:51:05'::timestamp AND b.Date<'2014-02-17 05:04:59'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<37 AND p.CommentCount>0 AND p.CommentCount<9 AND u.DownVotes>116 AND u.DownVotes<260 AND v.CreationDate>'2009-03-14 02:08:38'::timestamp AND v.CreationDate<'2011-09-02 18:51:21'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-03-06 13:00:38'::timestamp AND b.Date<'2014-03-24 16:41:50'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<107 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>596 AND u.DownVotes<1345 AND v.CreationDate>'2010-03-09 04:14:21'::timestamp AND v.CreationDate<'2013-01-24 22:03:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2013-03-03 14:33:49'::timestamp AND b.Date<'2013-08-12 09:27:19'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<180 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>545 AND u.DownVotes<990 AND v.CreationDate>'2011-10-05 10:14:56'::timestamp AND v.CreationDate<'2012-08-22 02:58:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-03-16 10:56:34'::timestamp AND b.Date<'2012-05-29 21:19:56'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<132 AND p.CommentCount>11 AND p.CommentCount<23 AND u.DownVotes>146 AND u.DownVotes<1130 AND v.CreationDate>'2009-02-18 03:54:03'::timestamp AND v.CreationDate<'2011-09-19 14:47:19'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2012-01-05 05:13:47'::timestamp AND b.Date<'2013-08-20 09:36:21'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<24 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>369 AND u.DownVotes<1191 AND v.CreationDate>'2010-02-02 12:13:37'::timestamp AND v.CreationDate<'2012-03-11 03:21:37'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-05-08 03:01:41'::timestamp AND b.Date<'2012-06-09 16:41:52'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<92 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>434 AND u.DownVotes<1753 AND v.CreationDate>'2009-10-21 13:54:40'::timestamp AND v.CreationDate<'2012-06-05 22:23:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-04-03 10:53:54'::timestamp AND b.Date<'2012-09-01 18:40:17'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<188 AND p.CommentCount>17 AND p.CommentCount<20 AND u.DownVotes>683 AND u.DownVotes<796 AND v.CreationDate>'2009-11-26 14:53:47'::timestamp AND v.CreationDate<'2014-05-14 10:30:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-01-19 20:49:23'::timestamp AND b.Date<'2012-08-09 22:37:25'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>53 AND p.Score<135 AND p.CommentCount>9 AND p.CommentCount<43 AND u.DownVotes>756 AND u.DownVotes<1711 AND v.CreationDate>'2009-04-05 02:48:58'::timestamp AND v.CreationDate<'2011-12-03 01:18:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2010-07-25 09:26:33'::timestamp AND b.Date<'2014-07-02 10:56:04'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<41 AND p.CommentCount>0 AND p.CommentCount<7 AND u.DownVotes>571 AND u.DownVotes<1601 AND v.CreationDate>'2009-09-07 07:49:39'::timestamp AND v.CreationDate<'2010-09-08 15:58:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-04-08 18:09:48'::timestamp AND b.Date<'2013-04-16 08:02:56'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<160 AND p.CommentCount>7 AND p.CommentCount<10 AND u.DownVotes>742 AND u.DownVotes<1220 AND v.CreationDate>'2011-07-28 17:42:56'::timestamp AND v.CreationDate<'2012-06-21 13:01:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-12-19 23:17:45'::timestamp AND b.Date<'2012-09-09 23:38:20'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<158 AND p.CommentCount>6 AND p.CommentCount<44 AND u.DownVotes>285 AND u.DownVotes<1859 AND v.CreationDate>'2010-07-17 04:06:36'::timestamp AND v.CreationDate<'2013-09-15 20:37:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-08-14 13:28:04'::timestamp AND b.Date<'2013-06-15 10:35:36'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<112 AND p.CommentCount>1 AND p.CommentCount<11 AND u.DownVotes>21 AND u.DownVotes<652 AND v.CreationDate>'2012-01-14 11:24:56'::timestamp AND v.CreationDate<'2012-12-20 06:49:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-07-04 14:43:29'::timestamp AND b.Date<'2013-08-11 09:57:23'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<165 AND p.CommentCount>4 AND p.CommentCount<6 AND u.DownVotes>485 AND u.DownVotes<1220 AND v.CreationDate>'2013-02-24 23:43:23'::timestamp AND v.CreationDate<'2013-09-02 22:49:39'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-04-21 17:21:20'::timestamp AND b.Date<'2012-10-21 12:10:07'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<165 AND p.CommentCount>1 AND p.CommentCount<40 AND u.DownVotes>642 AND u.DownVotes<1918 AND v.CreationDate>'2013-03-27 05:38:51'::timestamp AND v.CreationDate<'2014-04-12 04:33:31'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-08-22 16:28:12'::timestamp AND b.Date<'2012-10-24 09:52:07'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<12 AND p.CommentCount>13 AND p.CommentCount<42 AND u.DownVotes>387 AND u.DownVotes<797 AND v.CreationDate>'2009-08-29 10:27:01'::timestamp AND v.CreationDate<'2013-06-15 09:09:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-04-06 09:20:34'::timestamp AND b.Date<'2013-07-21 11:47:31'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<19 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>551 AND u.DownVotes<1067 AND v.CreationDate>'2011-05-03 13:15:31'::timestamp AND v.CreationDate<'2014-04-19 12:41:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-12-16 03:29:35'::timestamp AND b.Date<'2014-07-09 14:28:23'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<62 AND p.CommentCount>7 AND p.CommentCount<28 AND u.DownVotes>22 AND u.DownVotes<1478 AND v.CreationDate>'2009-08-22 23:49:26'::timestamp AND v.CreationDate<'2014-09-03 20:36:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-08-06 06:32:35'::timestamp AND b.Date<'2011-09-14 18:09:04'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<173 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>606 AND u.DownVotes<1742 AND v.CreationDate>'2009-02-05 20:41:11'::timestamp AND v.CreationDate<'2014-09-04 05:55:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-07-28 21:01:33'::timestamp AND b.Date<'2012-04-27 17:09:30'::timestamp;

/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<55 AND p.CommentCount>15 AND p.CommentCount<32 AND u.DownVotes>113 AND u.DownVotes<950 AND v.CreationDate>'2010-09-17 03:01:03'::timestamp AND v.CreationDate<'2012-01-11 04:52:02'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2010-11-10 12:57:13'::timestamp AND b.Date<'2014-08-07 21:29:23'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>138 AND p.Score<185 AND p.CommentCount>5 AND p.CommentCount<21 AND u.DownVotes>30 AND u.DownVotes<907 AND v.CreationDate>'2010-05-08 09:28:21'::timestamp AND v.CreationDate<'2013-09-22 07:18:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-02-04 12:58:11'::timestamp AND b.Date<'2012-02-28 19:56:28'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<26 AND p.CommentCount>8 AND p.CommentCount<35 AND u.DownVotes>363 AND u.DownVotes<1165 AND v.CreationDate>'2012-05-18 20:20:00'::timestamp AND v.CreationDate<'2013-07-26 18:11:59'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2013-02-09 19:32:09'::timestamp AND b.Date<'2013-06-24 12:23:56'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<108 AND p.CommentCount>4 AND p.CommentCount<42 AND u.DownVotes>487 AND u.DownVotes<794 AND v.CreationDate>'2012-08-13 11:09:34'::timestamp AND v.CreationDate<'2014-04-29 14:59:20'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-10-20 13:41:42'::timestamp AND b.Date<'2013-01-17 19:43:19'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>113 AND p.Score<176 AND p.CommentCount>8 AND p.CommentCount<36 AND u.DownVotes>554 AND u.DownVotes<1192 AND v.CreationDate>'2011-04-14 22:52:04'::timestamp AND v.CreationDate<'2014-08-25 22:12:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-02-20 02:41:34'::timestamp AND b.Date<'2014-03-07 22:58:53'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<175 AND p.CommentCount>2 AND p.CommentCount<32 AND u.DownVotes>123 AND u.DownVotes<1171 AND v.CreationDate>'2009-07-30 05:04:28'::timestamp AND v.CreationDate<'2011-09-17 14:32:47'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-03-29 01:44:50'::timestamp AND b.Date<'2013-05-05 23:20:48'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<94 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>65 AND u.DownVotes<1400 AND v.CreationDate>'2009-06-28 20:42:05'::timestamp AND v.CreationDate<'2012-12-06 10:44:13'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-06-13 08:19:54'::timestamp AND b.Date<'2011-10-05 09:19:32'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<105 AND p.CommentCount>18 AND p.CommentCount<41 AND u.DownVotes>631 AND u.DownVotes<793 AND v.CreationDate>'2009-04-29 02:07:16'::timestamp AND v.CreationDate<'2013-09-01 07:35:52'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2014-03-12 11:59:25'::timestamp AND b.Date<'2014-05-15 11:46:53'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<160 AND p.CommentCount>10 AND p.CommentCount<22 AND u.DownVotes>194 AND u.DownVotes<1869 AND v.CreationDate>'2012-05-19 10:41:53'::timestamp AND v.CreationDate<'2013-09-27 19:35:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2013-05-21 08:05:09'::timestamp AND b.Date<'2014-05-18 23:40:24'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<137 AND p.CommentCount>11 AND p.CommentCount<43 AND u.DownVotes>148 AND u.DownVotes<1412 AND v.CreationDate>'2009-12-03 18:25:40'::timestamp AND v.CreationDate<'2011-06-24 01:41:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2014-05-01 05:43:40'::timestamp AND b.Date<'2014-07-05 02:09:46'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<41 AND p.CommentCount>12 AND p.CommentCount<24 AND u.DownVotes>26 AND u.DownVotes<1067 AND v.CreationDate>'2011-08-26 07:28:08'::timestamp AND v.CreationDate<'2012-09-01 18:42:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-02-14 17:23:58'::timestamp AND b.Date<'2013-05-03 14:38:27'::timestamp;

/*+ MergeJoin(p u b v)
 NestLoop(p u b)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<157 AND p.CommentCount>7 AND p.CommentCount<11 AND u.DownVotes>1 AND u.DownVotes<474 AND v.CreationDate>'2009-12-26 19:37:24'::timestamp AND v.CreationDate<'2013-11-02 20:31:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2014-01-25 22:07:03'::timestamp AND b.Date<'2014-08-29 05:30:00'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<154 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>565 AND u.DownVotes<1073 AND v.CreationDate>'2009-09-03 17:49:28'::timestamp AND v.CreationDate<'2011-03-14 01:51:39'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2012-12-22 17:34:33'::timestamp AND b.Date<'2014-02-05 17:36:03'::timestamp;

/*+ HashJoin(p u b v)
 NestLoop(p u b)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<59 AND p.CommentCount>19 AND p.CommentCount<31 AND u.DownVotes>186 AND u.DownVotes<1536 AND v.CreationDate>'2010-07-25 02:26:32'::timestamp AND v.CreationDate<'2011-09-05 23:16:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-05-04 02:57:25'::timestamp AND b.Date<'2012-08-03 14:56:37'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<121 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>516 AND u.DownVotes<1486 AND v.CreationDate>'2010-10-30 21:19:50'::timestamp AND v.CreationDate<'2013-04-13 08:14:07'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2014-02-01 09:55:25'::timestamp AND b.Date<'2014-07-25 02:09:33'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<75 AND p.CommentCount>4 AND p.CommentCount<43 AND u.DownVotes>116 AND u.DownVotes<907 AND v.CreationDate>'2011-10-22 12:57:14'::timestamp AND v.CreationDate<'2012-07-21 16:35:40'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-12-20 04:09:09'::timestamp AND b.Date<'2013-01-19 03:55:42'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<64 AND p.CommentCount>20 AND p.CommentCount<26 AND u.DownVotes>26 AND u.DownVotes<440 AND v.CreationDate>'2012-04-19 13:08:03'::timestamp AND v.CreationDate<'2013-12-10 18:53:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-04-17 04:10:58'::timestamp AND b.Date<'2014-02-27 18:48:32'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<158 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>220 AND u.DownVotes<1072 AND v.CreationDate>'2013-07-13 12:46:49'::timestamp AND v.CreationDate<'2013-07-18 18:33:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-09-03 17:54:01'::timestamp AND b.Date<'2013-10-04 21:50:49'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<186 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>395 AND u.DownVotes<1701 AND v.CreationDate>'2013-06-05 08:01:23'::timestamp AND v.CreationDate<'2014-03-31 17:52:32'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-07-23 10:21:24'::timestamp AND b.Date<'2010-08-27 14:45:50'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<53 AND p.CommentCount>1 AND p.CommentCount<15 AND u.DownVotes>394 AND u.DownVotes<1434 AND v.CreationDate>'2010-06-18 15:20:51'::timestamp AND v.CreationDate<'2011-04-07 12:51:02'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2010-10-08 17:16:46'::timestamp AND b.Date<'2014-07-01 11:27:20'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<151 AND p.CommentCount>12 AND p.CommentCount<44 AND u.DownVotes>7 AND u.DownVotes<707 AND v.CreationDate>'2011-03-03 22:27:24'::timestamp AND v.CreationDate<'2014-08-17 03:19:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-09-03 23:32:29'::timestamp AND b.Date<'2012-12-29 16:09:20'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<110 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>33 AND u.DownVotes<183 AND v.CreationDate>'2009-10-29 05:25:47'::timestamp AND v.CreationDate<'2013-12-26 15:26:53'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2013-10-14 17:06:41'::timestamp AND b.Date<'2014-06-18 13:00:42'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<168 AND p.CommentCount>10 AND p.CommentCount<30 AND u.DownVotes>248 AND u.DownVotes<1501 AND v.CreationDate>'2009-09-11 04:06:44'::timestamp AND v.CreationDate<'2013-10-05 03:15:07'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-06-29 10:36:20'::timestamp AND b.Date<'2013-06-21 15:59:34'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<145 AND p.CommentCount>11 AND p.CommentCount<36 AND u.DownVotes>528 AND u.DownVotes<1389 AND v.CreationDate>'2012-02-18 19:13:12'::timestamp AND v.CreationDate<'2014-03-04 01:27:18'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-07-22 02:10:20'::timestamp AND b.Date<'2010-12-16 19:35:55'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<57 AND p.CommentCount>8 AND p.CommentCount<36 AND u.DownVotes>749 AND u.DownVotes<1159 AND v.CreationDate>'2013-11-27 00:58:45'::timestamp AND v.CreationDate<'2014-09-13 05:30:33'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-12-12 23:30:55'::timestamp AND b.Date<'2014-07-26 16:37:33'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<189 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>430 AND u.DownVotes<1022 AND v.CreationDate>'2010-12-21 09:29:31'::timestamp AND v.CreationDate<'2013-07-13 21:10:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-06-10 05:29:52'::timestamp AND b.Date<'2013-09-24 19:56:58'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<75 AND p.CommentCount>10 AND p.CommentCount<39 AND u.DownVotes>3 AND u.DownVotes<1599 AND v.CreationDate>'2009-03-13 21:39:44'::timestamp AND v.CreationDate<'2012-12-09 17:55:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-02 08:25:22'::timestamp AND b.Date<'2012-04-11 15:32:36'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<134 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>315 AND u.DownVotes<896 AND v.CreationDate>'2010-02-19 07:26:30'::timestamp AND v.CreationDate<'2012-12-22 15:43:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-08-10 20:27:54'::timestamp AND b.Date<'2013-07-20 22:17:13'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<27 AND p.CommentCount>9 AND p.CommentCount<37 AND u.DownVotes>390 AND u.DownVotes<1263 AND v.CreationDate>'2011-11-07 13:36:24'::timestamp AND v.CreationDate<'2013-10-30 20:42:28'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-10-01 18:09:25'::timestamp AND b.Date<'2012-10-10 12:55:17'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<91 AND p.CommentCount>2 AND p.CommentCount<44 AND u.DownVotes>199 AND u.DownVotes<782 AND v.CreationDate>'2012-12-01 10:25:57'::timestamp AND v.CreationDate<'2014-05-13 14:19:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-03-17 18:48:38'::timestamp AND b.Date<'2012-04-16 09:57:17'::timestamp;

/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>98 AND p.Score<142 AND p.CommentCount>0 AND p.CommentCount<17 AND u.DownVotes>115 AND u.DownVotes<606 AND v.CreationDate>'2011-11-24 08:59:52'::timestamp AND v.CreationDate<'2014-05-27 10:16:51'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-01-07 00:32:38'::timestamp AND b.Date<'2013-02-05 10:01:09'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<81 AND p.CommentCount>5 AND p.CommentCount<29 AND u.DownVotes>16 AND u.DownVotes<1631 AND v.CreationDate>'2009-03-04 09:31:06'::timestamp AND v.CreationDate<'2013-06-24 15:25:05'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-04-10 19:21:26'::timestamp AND b.Date<'2011-10-03 17:03:42'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<61 AND p.CommentCount>17 AND p.CommentCount<27 AND u.DownVotes>117 AND u.DownVotes<631 AND v.CreationDate>'2010-08-04 21:30:27'::timestamp AND v.CreationDate<'2012-10-12 02:24:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-12-13 08:52:49'::timestamp AND b.Date<'2014-07-18 04:13:57'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>61 AND p.Score<112 AND p.CommentCount>5 AND p.CommentCount<33 AND u.DownVotes>420 AND u.DownVotes<1075 AND v.CreationDate>'2011-02-23 04:40:27'::timestamp AND v.CreationDate<'2014-02-24 09:07:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2013-07-23 00:05:21'::timestamp AND b.Date<'2014-04-28 04:59:44'::timestamp;

/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<114 AND p.CommentCount>11 AND p.CommentCount<38 AND u.DownVotes>181 AND u.DownVotes<1545 AND v.CreationDate>'2011-03-03 21:27:24'::timestamp AND v.CreationDate<'2014-09-04 14:23:56'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2010-08-01 08:07:33'::timestamp AND b.Date<'2012-08-01 17:09:38'::timestamp;

/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<138 AND p.CommentCount>2 AND p.CommentCount<35 AND u.DownVotes>102 AND u.DownVotes<1245 AND v.CreationDate>'2009-11-10 11:23:59'::timestamp AND v.CreationDate<'2010-12-26 14:44:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-03-11 10:19:12'::timestamp AND b.Date<'2014-07-10 21:42:09'::timestamp;

/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<54 AND p.CommentCount>10 AND p.CommentCount<41 AND u.DownVotes>387 AND u.DownVotes<1752 AND v.CreationDate>'2011-01-15 08:00:49'::timestamp AND v.CreationDate<'2012-07-15 05:28:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2012-12-31 17:31:07'::timestamp AND b.Date<'2014-02-22 18:51:16'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<22 AND p.CommentCount>14 AND p.CommentCount<37 AND u.DownVotes>319 AND u.DownVotes<1317 AND v.CreationDate>'2009-08-15 14:56:18'::timestamp AND v.CreationDate<'2012-01-13 02:41:51'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-09-22 03:32:39'::timestamp AND b.Date<'2014-02-11 21:57:51'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<14 AND p.CommentCount>9 AND p.CommentCount<42 AND u.DownVotes>183 AND u.DownVotes<1077 AND v.CreationDate>'2009-07-18 01:33:46'::timestamp AND v.CreationDate<'2014-04-10 09:08:21'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2013-01-15 21:57:43'::timestamp AND b.Date<'2013-09-19 19:16:30'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<33 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>581 AND u.DownVotes<1470 AND v.CreationDate>'2011-02-19 09:32:57'::timestamp AND v.CreationDate<'2014-08-06 11:00:52'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2011-01-10 04:11:11'::timestamp AND b.Date<'2012-05-10 14:44:52'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<38 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>649 AND u.DownVotes<933 AND v.CreationDate>'2009-10-28 14:24:08'::timestamp AND v.CreationDate<'2011-07-21 22:36:35'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-10-25 03:43:36'::timestamp AND b.Date<'2014-07-22 17:43:34'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<134 AND p.CommentCount>30 AND p.CommentCount<42 AND u.DownVotes>205 AND u.DownVotes<827 AND v.CreationDate>'2013-07-14 12:18:11'::timestamp AND v.CreationDate<'2014-08-17 03:42:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-04-26 10:22:26'::timestamp AND b.Date<'2012-02-10 16:36:06'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<131 AND p.CommentCount>7 AND p.CommentCount<39 AND u.DownVotes>617 AND u.DownVotes<1335 AND v.CreationDate>'2011-07-15 05:51:45'::timestamp AND v.CreationDate<'2013-05-01 08:54:23'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-09-17 08:56:28'::timestamp AND b.Date<'2014-02-02 08:56:59'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<122 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>348 AND u.DownVotes<1630 AND v.CreationDate>'2009-08-13 12:57:24'::timestamp AND v.CreationDate<'2011-12-25 02:25:58'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-06-13 17:32:04'::timestamp AND b.Date<'2013-10-31 16:01:03'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<28 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>74 AND u.DownVotes<1536 AND v.CreationDate>'2011-10-25 13:05:43'::timestamp AND v.CreationDate<'2013-12-20 01:46:17'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-08-13 12:26:07'::timestamp AND b.Date<'2013-12-28 23:17:17'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<34 AND p.CommentCount>5 AND p.CommentCount<28 AND u.DownVotes>402 AND u.DownVotes<924 AND v.CreationDate>'2010-09-19 20:24:51'::timestamp AND v.CreationDate<'2013-12-12 19:43:13'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-10-16 04:32:21'::timestamp AND b.Date<'2012-04-22 05:28:27'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>100 AND p.Score<156 AND p.CommentCount>4 AND p.CommentCount<21 AND u.DownVotes>561 AND u.DownVotes<1386 AND v.CreationDate>'2011-10-22 07:32:25'::timestamp AND v.CreationDate<'2012-09-14 04:41:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-09-06 06:31:33'::timestamp AND b.Date<'2013-01-30 18:47:07'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<148 AND p.CommentCount>8 AND p.CommentCount<39 AND u.DownVotes>54 AND u.DownVotes<1228 AND v.CreationDate>'2009-04-30 12:09:35'::timestamp AND v.CreationDate<'2011-03-23 09:24:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-08-01 17:56:52'::timestamp AND b.Date<'2013-01-20 11:27:23'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<15 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>728 AND u.DownVotes<1467 AND v.CreationDate>'2010-10-02 22:08:03'::timestamp AND v.CreationDate<'2012-05-24 05:19:56'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-08-06 02:14:59'::timestamp AND b.Date<'2011-11-30 08:29:40'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<172 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>193 AND u.DownVotes<1630 AND v.CreationDate>'2011-11-27 12:10:11'::timestamp AND v.CreationDate<'2013-05-20 17:25:25'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-11-20 04:34:09'::timestamp AND b.Date<'2014-06-14 14:42:35'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<119 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>67 AND u.DownVotes<1638 AND v.CreationDate>'2010-04-27 00:37:18'::timestamp AND v.CreationDate<'2010-09-10 14:47:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-11-15 16:41:29'::timestamp AND b.Date<'2012-08-01 01:23:14'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>75 AND p.Score<119 AND p.CommentCount>11 AND p.CommentCount<37 AND u.DownVotes>100 AND u.DownVotes<224 AND v.CreationDate>'2009-05-13 11:58:19'::timestamp AND v.CreationDate<'2013-10-18 04:28:31'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2011-03-11 15:30:15'::timestamp AND b.Date<'2013-03-25 12:51:25'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>85 AND p.Score<146 AND p.CommentCount>0 AND p.CommentCount<42 AND u.DownVotes>74 AND u.DownVotes<362 AND v.CreationDate>'2009-07-06 23:07:36'::timestamp AND v.CreationDate<'2012-06-02 21:10:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-09-17 17:45:38'::timestamp AND b.Date<'2013-12-14 17:04:20'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<61 AND p.CommentCount>16 AND p.CommentCount<35 AND u.DownVotes>177 AND u.DownVotes<1275 AND v.CreationDate>'2009-09-28 18:05:20'::timestamp AND v.CreationDate<'2014-03-05 12:20:23'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2011-01-31 14:49:12'::timestamp AND b.Date<'2014-09-05 22:27:19'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<103 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>264 AND u.DownVotes<985 AND v.CreationDate>'2014-02-23 08:28:11'::timestamp AND v.CreationDate<'2014-05-11 01:39:19'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2013-10-28 12:48:09'::timestamp AND b.Date<'2014-05-10 21:05:47'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<187 AND p.CommentCount>5 AND p.CommentCount<25 AND u.DownVotes>613 AND u.DownVotes<1858 AND v.CreationDate>'2012-12-21 11:37:01'::timestamp AND v.CreationDate<'2014-09-11 23:32:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-07-28 06:46:21'::timestamp AND b.Date<'2013-10-20 05:46:58'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<84 AND p.CommentCount>5 AND p.CommentCount<32 AND u.DownVotes>521 AND u.DownVotes<1095 AND v.CreationDate>'2010-09-26 11:42:18'::timestamp AND v.CreationDate<'2014-05-23 16:37:32'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2013-01-04 12:57:59'::timestamp AND b.Date<'2014-01-26 03:58:15'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<167 AND p.CommentCount>12 AND p.CommentCount<19 AND u.DownVotes>602 AND u.DownVotes<1591 AND v.CreationDate>'2013-07-04 18:12:26'::timestamp AND v.CreationDate<'2014-08-28 04:31:39'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-12-25 08:27:35'::timestamp AND b.Date<'2013-04-04 08:20:45'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<83 AND p.CommentCount>14 AND p.CommentCount<25 AND u.DownVotes>86 AND u.DownVotes<430 AND v.CreationDate>'2010-06-07 19:49:24'::timestamp AND v.CreationDate<'2011-11-09 10:40:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2011-10-06 19:30:24'::timestamp AND b.Date<'2011-11-11 12:50:32'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<148 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>421 AND u.DownVotes<1198 AND v.CreationDate>'2010-07-09 16:19:25'::timestamp AND v.CreationDate<'2013-03-27 17:10:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-11-28 05:37:53'::timestamp AND b.Date<'2012-06-21 04:55:41'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<92 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>701 AND u.DownVotes<1278 AND v.CreationDate>'2009-12-15 15:43:30'::timestamp AND v.CreationDate<'2013-10-01 20:29:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-07-02 13:07:28'::timestamp AND b.Date<'2013-12-24 14:48:52'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<183 AND p.CommentCount>10 AND p.CommentCount<28 AND u.DownVotes>629 AND u.DownVotes<1178 AND v.CreationDate>'2010-08-29 00:29:04'::timestamp AND v.CreationDate<'2012-03-24 17:29:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-12-09 23:21:03'::timestamp AND b.Date<'2011-10-07 05:05:00'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<154 AND p.CommentCount>8 AND p.CommentCount<38 AND u.DownVotes>427 AND u.DownVotes<1190 AND v.CreationDate>'2009-03-27 15:47:24'::timestamp AND v.CreationDate<'2014-03-12 09:17:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-06-12 09:01:54'::timestamp AND b.Date<'2014-08-18 22:04:39'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<79 AND p.CommentCount>5 AND p.CommentCount<7 AND u.DownVotes>256 AND u.DownVotes<1303 AND v.CreationDate>'2009-11-19 04:58:12'::timestamp AND v.CreationDate<'2014-06-29 08:26:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-01-03 11:49:27'::timestamp AND b.Date<'2013-08-12 10:38:46'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<133 AND p.CommentCount>5 AND p.CommentCount<39 AND u.DownVotes>411 AND u.DownVotes<792 AND v.CreationDate>'2011-08-21 03:56:03'::timestamp AND v.CreationDate<'2014-02-04 11:22:52'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2012-07-02 09:31:16'::timestamp AND b.Date<'2014-05-03 04:13:48'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<30 AND p.CommentCount>2 AND p.CommentCount<41 AND u.DownVotes>8 AND u.DownVotes<329 AND v.CreationDate>'2009-06-02 20:15:55'::timestamp AND v.CreationDate<'2013-04-06 03:47:22'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<15 AND b.Date>'2011-10-08 15:34:51'::timestamp AND b.Date<'2012-01-17 08:53:24'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<93 AND p.CommentCount>10 AND p.CommentCount<25 AND u.DownVotes>368 AND u.DownVotes<876 AND v.CreationDate>'2012-07-18 17:13:33'::timestamp AND v.CreationDate<'2012-12-16 12:31:02'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-02-07 16:12:34'::timestamp AND b.Date<'2012-09-27 19:58:49'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<155 AND p.CommentCount>13 AND p.CommentCount<27 AND u.DownVotes>148 AND u.DownVotes<1198 AND v.CreationDate>'2014-01-19 13:45:14'::timestamp AND v.CreationDate<'2014-09-03 20:27:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-12-04 12:07:21'::timestamp AND b.Date<'2014-05-10 20:01:00'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<60 AND p.CommentCount>4 AND p.CommentCount<8 AND u.DownVotes>675 AND u.DownVotes<803 AND v.CreationDate>'2009-06-19 21:38:53'::timestamp AND v.CreationDate<'2013-11-25 14:26:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-09-24 23:30:48'::timestamp AND b.Date<'2012-09-13 20:20:48'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<69 AND p.CommentCount>11 AND p.CommentCount<16 AND u.DownVotes>144 AND u.DownVotes<690 AND v.CreationDate>'2011-07-08 08:32:09'::timestamp AND v.CreationDate<'2012-07-17 05:08:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-07-08 00:58:50'::timestamp AND b.Date<'2014-04-14 20:37:31'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<169 AND p.CommentCount>5 AND p.CommentCount<30 AND u.DownVotes>162 AND u.DownVotes<661 AND v.CreationDate>'2009-12-19 06:55:10'::timestamp AND v.CreationDate<'2014-05-18 18:04:27'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-04-30 13:15:09'::timestamp AND b.Date<'2014-04-13 13:26:11'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<16 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>180 AND u.DownVotes<1141 AND v.CreationDate>'2010-11-10 17:29:37'::timestamp AND v.CreationDate<'2012-05-04 16:35:35'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-03-29 07:03:56'::timestamp AND b.Date<'2012-09-01 08:15:02'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<99 AND p.CommentCount>9 AND p.CommentCount<39 AND u.DownVotes>318 AND u.DownVotes<722 AND v.CreationDate>'2009-06-01 02:52:56'::timestamp AND v.CreationDate<'2013-10-15 13:09:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-02-21 09:07:47'::timestamp AND b.Date<'2013-10-20 23:38:11'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<148 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>362 AND u.DownVotes<666 AND v.CreationDate>'2012-10-08 20:19:22'::timestamp AND v.CreationDate<'2013-12-14 23:21:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-04-03 21:04:34'::timestamp AND b.Date<'2012-01-08 09:46:54'::timestamp;

/*+ NestLoop(u b p v)
 MergeJoin(u b p)
 MergeJoin(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<45 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>7 AND u.DownVotes<1834 AND v.CreationDate>'2013-01-06 03:38:53'::timestamp AND v.CreationDate<'2013-02-14 12:49:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-03-26 06:58:33'::timestamp AND b.Date<'2012-06-04 12:32:25'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<73 AND p.CommentCount>5 AND p.CommentCount<15 AND u.DownVotes>296 AND u.DownVotes<629 AND v.CreationDate>'2009-04-29 02:43:13'::timestamp AND v.CreationDate<'2013-11-05 19:58:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-03-10 09:48:13'::timestamp AND b.Date<'2013-10-17 15:55:45'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<11 AND u.DownVotes>8 AND u.DownVotes<1282 AND v.CreationDate>'2009-08-13 22:28:13'::timestamp AND v.CreationDate<'2014-08-12 20:40:09'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-01-24 17:08:27'::timestamp AND b.Date<'2012-01-21 00:14:52'::timestamp;

/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<115 AND p.CommentCount>11 AND p.CommentCount<15 AND u.DownVotes>380 AND u.DownVotes<1381 AND v.CreationDate>'2010-06-21 17:12:52'::timestamp AND v.CreationDate<'2014-01-02 01:44:17'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2011-03-13 11:12:01'::timestamp AND b.Date<'2013-10-11 08:56:26'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<78 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>460 AND u.DownVotes<1333 AND v.CreationDate>'2009-02-20 21:53:07'::timestamp AND v.CreationDate<'2011-11-07 05:34:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-12-26 08:42:21'::timestamp AND b.Date<'2014-05-16 10:11:51'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>72 AND p.Score<123 AND p.CommentCount>8 AND p.CommentCount<37 AND u.DownVotes>99 AND u.DownVotes<844 AND v.CreationDate>'2012-07-21 17:49:59'::timestamp AND v.CreationDate<'2013-07-26 11:14:55'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-06-06 06:02:29'::timestamp AND b.Date<'2013-10-16 18:45:32'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<154 AND p.CommentCount>10 AND p.CommentCount<34 AND u.DownVotes>71 AND u.DownVotes<1323 AND v.CreationDate>'2012-01-21 09:03:50'::timestamp AND v.CreationDate<'2013-09-11 19:27:16'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-01-15 12:20:47'::timestamp AND b.Date<'2014-08-03 16:25:36'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<61 AND p.CommentCount>2 AND p.CommentCount<13 AND u.DownVotes>363 AND u.DownVotes<473 AND v.CreationDate>'2012-04-19 14:08:27'::timestamp AND v.CreationDate<'2012-11-26 21:54:14'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2010-09-05 04:54:07'::timestamp AND b.Date<'2013-05-10 03:00:45'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<180 AND p.CommentCount>11 AND p.CommentCount<39 AND u.DownVotes>234 AND u.DownVotes<1337 AND v.CreationDate>'2011-06-23 09:55:12'::timestamp AND v.CreationDate<'2014-07-12 19:39:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-05-28 03:05:09'::timestamp AND b.Date<'2014-05-17 00:58:40'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<50 AND p.CommentCount>13 AND p.CommentCount<35 AND u.DownVotes>762 AND u.DownVotes<1697 AND v.CreationDate>'2010-03-31 20:09:21'::timestamp AND v.CreationDate<'2012-08-13 16:15:50'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-12-08 16:17:53'::timestamp AND b.Date<'2014-05-30 23:02:25'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<94 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>487 AND u.DownVotes<1291 AND v.CreationDate>'2010-10-05 13:07:45'::timestamp AND v.CreationDate<'2012-12-18 05:11:10'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-04-29 06:24:22'::timestamp AND b.Date<'2013-04-05 00:32:12'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<54 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>411 AND u.DownVotes<961 AND v.CreationDate>'2009-02-22 16:30:14'::timestamp AND v.CreationDate<'2014-05-15 06:00:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2013-03-03 06:38:53'::timestamp AND b.Date<'2014-04-20 04:55:22'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<105 AND p.CommentCount>9 AND p.CommentCount<17 AND u.DownVotes>313 AND u.DownVotes<1316 AND v.CreationDate>'2010-09-09 09:31:49'::timestamp AND v.CreationDate<'2013-04-06 18:27:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-05-03 14:30:41'::timestamp AND b.Date<'2014-03-05 00:24:57'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<22 AND p.CommentCount>17 AND p.CommentCount<31 AND u.DownVotes>698 AND u.DownVotes<879 AND v.CreationDate>'2013-07-09 14:31:47'::timestamp AND v.CreationDate<'2014-08-26 08:23:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-06-03 21:23:56'::timestamp AND b.Date<'2014-06-07 08:55:03'::timestamp;

/*+ MergeJoin(p u b v)
 NestLoop(p u b)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<166 AND p.CommentCount>5 AND p.CommentCount<12 AND u.DownVotes>14 AND u.DownVotes<1574 AND v.CreationDate>'2011-12-02 09:08:00'::timestamp AND v.CreationDate<'2012-08-12 00:49:49'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2014-01-23 09:59:35'::timestamp AND b.Date<'2014-08-29 14:04:41'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<143 AND p.CommentCount>12 AND p.CommentCount<32 AND u.DownVotes>300 AND u.DownVotes<1840 AND v.CreationDate>'2009-08-15 09:49:25'::timestamp AND v.CreationDate<'2013-09-07 21:41:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-01 08:44:52'::timestamp AND b.Date<'2013-10-16 18:43:42'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<24 AND p.CommentCount>0 AND p.CommentCount<27 AND u.DownVotes>674 AND u.DownVotes<1018 AND v.CreationDate>'2009-02-18 06:18:10'::timestamp AND v.CreationDate<'2012-03-02 04:29:27'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2013-01-05 22:21:23'::timestamp AND b.Date<'2013-08-06 04:57:40'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<54 AND p.CommentCount>12 AND p.CommentCount<14 AND u.DownVotes>78 AND u.DownVotes<364 AND v.CreationDate>'2011-05-12 06:42:55'::timestamp AND v.CreationDate<'2014-01-01 02:09:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-01-08 21:20:33'::timestamp AND b.Date<'2014-07-02 16:37:25'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<168 AND p.CommentCount>0 AND p.CommentCount<17 AND u.DownVotes>236 AND u.DownVotes<1417 AND v.CreationDate>'2011-05-09 20:41:12'::timestamp AND v.CreationDate<'2011-12-25 18:27:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-03-04 12:48:52'::timestamp AND b.Date<'2013-07-02 02:59:35'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<138 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>502 AND u.DownVotes<1785 AND v.CreationDate>'2010-08-23 12:25:51'::timestamp AND v.CreationDate<'2012-12-07 03:32:03'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2013-02-15 01:23:42'::timestamp AND b.Date<'2013-11-30 10:22:28'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<150 AND p.CommentCount>2 AND p.CommentCount<23 AND u.DownVotes>633 AND u.DownVotes<1083 AND v.CreationDate>'2011-02-25 00:50:59'::timestamp AND v.CreationDate<'2011-07-24 22:33:18'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-07-22 23:38:47'::timestamp AND b.Date<'2014-04-13 04:35:25'::timestamp;

/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<69 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>356 AND u.DownVotes<450 AND v.CreationDate>'2012-06-04 01:00:26'::timestamp AND v.CreationDate<'2013-09-27 02:50:27'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-09-25 01:14:43'::timestamp AND b.Date<'2012-02-17 00:44:51'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<154 AND p.CommentCount>3 AND p.CommentCount<24 AND u.DownVotes>5 AND u.DownVotes<624 AND v.CreationDate>'2010-02-21 06:39:59'::timestamp AND v.CreationDate<'2011-06-17 14:39:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-12-18 15:18:24'::timestamp AND b.Date<'2013-06-24 13:47:00'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<189 AND p.CommentCount>11 AND p.CommentCount<41 AND u.DownVotes>596 AND u.DownVotes<1738 AND v.CreationDate>'2011-10-01 08:35:24'::timestamp AND v.CreationDate<'2014-06-14 19:46:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-11-03 06:45:01'::timestamp AND b.Date<'2013-06-13 17:55:11'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<121 AND p.CommentCount>14 AND p.CommentCount<40 AND u.DownVotes>172 AND u.DownVotes<216 AND v.CreationDate>'2010-02-06 05:04:01'::timestamp AND v.CreationDate<'2013-09-24 17:12:32'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-11-14 22:49:19'::timestamp AND b.Date<'2013-12-31 03:14:53'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<182 AND p.CommentCount>1 AND p.CommentCount<37 AND u.DownVotes>535 AND u.DownVotes<1708 AND v.CreationDate>'2013-08-10 21:20:25'::timestamp AND v.CreationDate<'2013-12-17 22:49:21'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2010-12-29 00:44:19'::timestamp AND b.Date<'2012-03-30 05:13:31'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<161 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>167 AND u.DownVotes<1476 AND v.CreationDate>'2010-08-22 17:59:55'::timestamp AND v.CreationDate<'2012-01-05 11:42:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-04-04 11:50:55'::timestamp AND b.Date<'2014-09-12 10:21:07'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<70 AND p.CommentCount>3 AND p.CommentCount<32 AND u.DownVotes>17 AND u.DownVotes<427 AND v.CreationDate>'2012-07-08 10:35:27'::timestamp AND v.CreationDate<'2014-01-14 18:59:53'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2011-03-10 22:47:08'::timestamp AND b.Date<'2014-04-25 07:00:18'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<183 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>437 AND u.DownVotes<1533 AND v.CreationDate>'2011-11-16 17:26:36'::timestamp AND v.CreationDate<'2014-05-06 09:38:45'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2012-01-28 18:21:07'::timestamp AND b.Date<'2014-05-30 15:51:36'::timestamp;

/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<187 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>644 AND u.DownVotes<1335 AND v.CreationDate>'2011-09-07 20:38:33'::timestamp AND v.CreationDate<'2011-10-05 21:01:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-10-13 14:45:48'::timestamp AND b.Date<'2013-11-06 22:34:15'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<173 AND p.CommentCount>31 AND p.CommentCount<36 AND u.DownVotes>66 AND u.DownVotes<1319 AND v.CreationDate>'2009-06-13 00:49:08'::timestamp AND v.CreationDate<'2013-04-07 18:00:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-04-20 14:03:39'::timestamp AND b.Date<'2013-06-08 04:37:28'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<145 AND p.CommentCount>12 AND p.CommentCount<27 AND u.DownVotes>209 AND u.DownVotes<1889 AND v.CreationDate>'2010-02-09 21:08:42'::timestamp AND v.CreationDate<'2014-08-05 10:10:42'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-12-27 18:02:44'::timestamp AND b.Date<'2014-07-24 04:26:16'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<87 AND p.CommentCount>3 AND p.CommentCount<33 AND u.DownVotes>291 AND u.DownVotes<1126 AND v.CreationDate>'2010-12-30 17:45:53'::timestamp AND v.CreationDate<'2014-01-22 08:32:30'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-11-14 05:09:04'::timestamp AND b.Date<'2014-04-14 17:40:38'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<168 AND p.CommentCount>0 AND p.CommentCount<10 AND u.DownVotes>762 AND u.DownVotes<815 AND v.CreationDate>'2011-05-02 12:09:02'::timestamp AND v.CreationDate<'2014-09-07 17:39:13'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2010-09-23 10:23:23'::timestamp AND b.Date<'2013-01-20 03:50:51'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<171 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>123 AND u.DownVotes<1590 AND v.CreationDate>'2010-03-15 11:10:46'::timestamp AND v.CreationDate<'2010-09-14 09:38:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-01 18:05:12'::timestamp AND b.Date<'2011-12-11 04:04:55'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<26 AND p.CommentCount>5 AND p.CommentCount<33 AND u.DownVotes>146 AND u.DownVotes<1775 AND v.CreationDate>'2010-12-13 10:17:44'::timestamp AND v.CreationDate<'2012-12-04 16:53:55'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-02-28 15:37:47'::timestamp AND b.Date<'2012-12-16 21:39:28'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<7 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>293 AND u.DownVotes<1064 AND v.CreationDate>'2009-11-05 22:53:27'::timestamp AND v.CreationDate<'2014-04-26 15:52:30'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2014-04-06 09:51:23'::timestamp AND b.Date<'2014-05-20 18:43:06'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<145 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>488 AND u.DownVotes<1485 AND v.CreationDate>'2011-01-16 21:33:03'::timestamp AND v.CreationDate<'2011-08-29 20:30:27'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-04-24 08:31:25'::timestamp AND b.Date<'2012-03-10 04:04:22'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<145 AND p.CommentCount>8 AND p.CommentCount<42 AND u.DownVotes>31 AND u.DownVotes<1899 AND v.CreationDate>'2013-10-25 01:55:23'::timestamp AND v.CreationDate<'2014-09-12 01:21:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-07-14 12:54:09'::timestamp AND b.Date<'2011-12-06 13:49:47'::timestamp;

/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<145 AND p.CommentCount>17 AND p.CommentCount<26 AND u.DownVotes>11 AND u.DownVotes<1353 AND v.CreationDate>'2012-01-05 00:21:32'::timestamp AND v.CreationDate<'2014-07-01 20:10:10'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2013-07-19 00:19:29'::timestamp AND b.Date<'2014-03-18 06:24:40'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<86 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>260 AND u.DownVotes<1142 AND v.CreationDate>'2012-04-24 15:59:08'::timestamp AND v.CreationDate<'2014-02-17 21:05:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-08-28 17:22:20'::timestamp AND b.Date<'2011-01-15 04:59:44'::timestamp;

/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<29 AND p.CommentCount>1 AND p.CommentCount<8 AND u.DownVotes>54 AND u.DownVotes<395 AND v.CreationDate>'2009-09-09 14:01:10'::timestamp AND v.CreationDate<'2011-08-08 01:53:56'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2013-04-14 05:57:08'::timestamp AND b.Date<'2014-03-04 16:38:07'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<68 AND p.CommentCount>19 AND p.CommentCount<28 AND u.DownVotes>48 AND u.DownVotes<568 AND v.CreationDate>'2011-05-28 08:52:46'::timestamp AND v.CreationDate<'2013-08-02 11:53:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-01-14 03:11:32'::timestamp AND b.Date<'2013-09-14 21:37:09'::timestamp;

/*+ HashJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<46 AND p.CommentCount>8 AND p.CommentCount<33 AND u.DownVotes>31 AND u.DownVotes<568 AND v.CreationDate>'2010-02-07 01:12:10'::timestamp AND v.CreationDate<'2012-06-02 06:11:15'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2013-01-08 20:58:39'::timestamp AND b.Date<'2014-06-24 11:39:21'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<157 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>245 AND u.DownVotes<1638 AND v.CreationDate>'2009-07-18 12:28:19'::timestamp AND v.CreationDate<'2014-01-16 17:49:56'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2013-06-08 23:17:16'::timestamp AND b.Date<'2013-08-04 23:27:51'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<138 AND p.CommentCount>4 AND p.CommentCount<25 AND u.DownVotes>462 AND u.DownVotes<1180 AND v.CreationDate>'2011-03-06 16:14:42'::timestamp AND v.CreationDate<'2013-08-13 13:56:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-05-28 18:05:41'::timestamp AND b.Date<'2014-09-12 02:26:59'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<89 AND p.CommentCount>17 AND p.CommentCount<23 AND u.DownVotes>338 AND u.DownVotes<1489 AND v.CreationDate>'2009-04-27 18:13:08'::timestamp AND v.CreationDate<'2012-07-19 14:47:19'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-07-24 17:09:34'::timestamp AND b.Date<'2014-02-02 17:36:36'::timestamp;

/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<42 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>433 AND u.DownVotes<1846 AND v.CreationDate>'2013-04-06 20:42:58'::timestamp AND v.CreationDate<'2014-08-05 05:26:49'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-04-19 00:32:13'::timestamp AND b.Date<'2011-07-31 21:50:16'::timestamp;

/*+ MergeJoin(p u b v)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<165 AND p.CommentCount>11 AND p.CommentCount<17 AND u.DownVotes>243 AND u.DownVotes<1348 AND v.CreationDate>'2010-05-29 13:29:25'::timestamp AND v.CreationDate<'2014-07-01 00:54:18'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-06-01 01:02:20'::timestamp AND b.Date<'2014-02-04 01:33:43'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<190 AND p.CommentCount>16 AND p.CommentCount<43 AND u.DownVotes>43 AND u.DownVotes<1497 AND v.CreationDate>'2011-09-19 00:41:22'::timestamp AND v.CreationDate<'2014-08-10 06:04:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-29 07:44:20'::timestamp AND b.Date<'2014-05-29 07:37:06'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<72 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>188 AND u.DownVotes<1004 AND v.CreationDate>'2009-03-03 01:47:09'::timestamp AND v.CreationDate<'2013-08-15 04:01:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-07-20 03:19:18'::timestamp AND b.Date<'2014-06-17 23:31:25'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<186 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>601 AND u.DownVotes<1399 AND v.CreationDate>'2011-01-22 19:35:33'::timestamp AND v.CreationDate<'2013-05-01 09:18:00'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-08-15 14:58:47'::timestamp AND b.Date<'2012-09-28 00:54:51'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>73 AND p.Score<110 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>42 AND u.DownVotes<1329 AND v.CreationDate>'2010-11-15 02:56:12'::timestamp AND v.CreationDate<'2013-09-03 23:31:28'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-07-13 06:31:09'::timestamp AND b.Date<'2014-05-28 19:05:20'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<45 AND p.CommentCount>4 AND p.CommentCount<31 AND u.DownVotes>312 AND u.DownVotes<1266 AND v.CreationDate>'2011-11-06 06:06:05'::timestamp AND v.CreationDate<'2013-11-04 19:59:59'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2014-04-22 11:36:11'::timestamp AND b.Date<'2014-08-18 11:49:44'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<82 AND p.CommentCount>10 AND p.CommentCount<36 AND u.DownVotes>314 AND u.DownVotes<1657 AND v.CreationDate>'2011-05-08 21:35:33'::timestamp AND v.CreationDate<'2013-10-03 19:17:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-09-20 15:43:33'::timestamp AND b.Date<'2011-10-05 23:26:12'::timestamp;

/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<145 AND p.CommentCount>2 AND p.CommentCount<8 AND u.DownVotes>3 AND u.DownVotes<1386 AND v.CreationDate>'2010-06-05 18:30:24'::timestamp AND v.CreationDate<'2012-12-27 11:05:10'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2012-03-13 05:41:52'::timestamp AND b.Date<'2013-11-10 04:28:22'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>104 AND p.Score<130 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>605 AND u.DownVotes<1022 AND v.CreationDate>'2012-11-03 18:21:08'::timestamp AND v.CreationDate<'2014-05-17 19:15:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-09-23 20:34:12'::timestamp AND b.Date<'2014-01-14 08:25:41'::timestamp;

/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<190 AND p.CommentCount>1 AND p.CommentCount<23 AND u.DownVotes>352 AND u.DownVotes<1051 AND v.CreationDate>'2010-12-22 22:28:46'::timestamp AND v.CreationDate<'2014-01-05 00:34:05'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2010-09-09 22:39:25'::timestamp AND b.Date<'2014-03-03 21:14:32'::timestamp;

/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<136 AND p.CommentCount>7 AND p.CommentCount<22 AND u.DownVotes>680 AND u.DownVotes<1552 AND v.CreationDate>'2009-05-15 16:35:04'::timestamp AND v.CreationDate<'2014-05-19 09:39:01'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2013-02-11 02:54:55'::timestamp AND b.Date<'2014-03-02 16:57:39'::timestamp;

