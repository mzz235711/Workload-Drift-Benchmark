/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<113 AND p.CommentCount>7 AND p.CommentCount<27 AND u.DownVotes>101 AND u.DownVotes<1511 AND v.CreationDate>'2009-08-17 04:19:44'::timestamp AND v.CreationDate<'2012-09-10 15:11:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-06-01 03:56:06'::timestamp AND b.Date<'2013-12-10 20:05:47'::timestamp;

