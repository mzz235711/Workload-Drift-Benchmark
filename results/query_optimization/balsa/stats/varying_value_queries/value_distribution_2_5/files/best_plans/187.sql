/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<39 AND p.CommentCount>10 AND p.CommentCount<41 AND u.DownVotes>113 AND u.DownVotes<343 AND v.CreationDate>'2009-08-03 03:42:36'::timestamp AND v.CreationDate<'2013-04-14 04:16:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-09-16 22:13:59'::timestamp AND b.Date<'2012-09-26 08:09:52'::timestamp;

