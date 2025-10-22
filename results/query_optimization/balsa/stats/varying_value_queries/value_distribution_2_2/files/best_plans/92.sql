/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<177 AND p.CommentCount>9 AND p.CommentCount<24 AND u.DownVotes>748 AND u.DownVotes<1880 AND v.CreationDate>'2009-02-26 16:20:03'::timestamp AND v.CreationDate<'2013-07-15 18:23:55'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2013-05-09 00:56:59'::timestamp AND b.Date<'2014-07-23 03:40:00'::timestamp;

