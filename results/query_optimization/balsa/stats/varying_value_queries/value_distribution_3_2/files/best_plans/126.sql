/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>126 AND p.Score<131 AND p.CommentCount>10 AND p.CommentCount<38 AND u.DownVotes>449 AND u.DownVotes<1268 AND v.CreationDate>'2012-01-27 19:04:27'::timestamp AND v.CreationDate<'2014-06-22 10:48:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-03-24 01:49:03'::timestamp AND b.Date<'2014-06-04 18:42:53'::timestamp;

