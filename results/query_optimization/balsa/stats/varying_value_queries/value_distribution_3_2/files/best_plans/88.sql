/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<159 AND p.CommentCount>10 AND p.CommentCount<21 AND u.DownVotes>30 AND u.DownVotes<1765 AND v.CreationDate>'2012-09-28 05:02:46'::timestamp AND v.CreationDate<'2013-03-12 08:55:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-12-23 05:09:25'::timestamp AND b.Date<'2014-08-27 08:23:59'::timestamp;

