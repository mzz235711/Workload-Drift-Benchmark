/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<130 AND p.CommentCount>5 AND p.CommentCount<16 AND u.DownVotes>38 AND u.DownVotes<137 AND v.CreationDate>'2009-04-10 05:02:18'::timestamp AND v.CreationDate<'2013-09-12 07:02:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-04-06 16:04:36'::timestamp AND b.Date<'2013-03-17 02:52:03'::timestamp;

