/*+ NestLoop(v u p b)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>115 AND p.Score<170 AND p.CommentCount>6 AND p.CommentCount<12 AND u.DownVotes>95 AND u.DownVotes<531 AND v.CreationDate>'2011-04-13 00:52:10'::timestamp AND v.CreationDate<'2012-09-21 05:06:36'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-07-26 06:01:39'::timestamp AND b.Date<'2013-08-23 23:35:38'::timestamp;

