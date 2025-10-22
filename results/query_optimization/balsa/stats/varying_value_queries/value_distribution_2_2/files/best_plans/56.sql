/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<27 AND p.CommentCount>12 AND p.CommentCount<33 AND u.DownVotes>314 AND u.DownVotes<1575 AND v.CreationDate>'2009-08-03 05:05:03'::timestamp AND v.CreationDate<'2012-05-13 18:22:47'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2012-01-21 20:26:45'::timestamp AND b.Date<'2012-02-22 10:29:21'::timestamp;

