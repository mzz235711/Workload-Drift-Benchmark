/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<55 AND p.CommentCount>3 AND p.CommentCount<27 AND u.DownVotes>608 AND u.DownVotes<1624 AND v.CreationDate>'2009-11-21 16:12:47'::timestamp AND v.CreationDate<'2011-11-20 13:25:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-01-04 21:22:21'::timestamp AND b.Date<'2012-08-25 05:00:54'::timestamp;

