/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<155 AND p.CommentCount>1 AND p.CommentCount<35 AND u.DownVotes>178 AND u.DownVotes<636 AND v.CreationDate>'2010-10-30 08:49:00'::timestamp AND v.CreationDate<'2013-12-15 17:02:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-02-26 23:16:01'::timestamp AND b.Date<'2012-04-06 17:42:48'::timestamp;

