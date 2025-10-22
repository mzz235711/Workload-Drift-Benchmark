/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<133 AND p.CommentCount>0 AND p.CommentCount<27 AND u.DownVotes>394 AND u.DownVotes<1012 AND v.CreationDate>'2012-02-12 22:28:44'::timestamp AND v.CreationDate<'2012-03-07 14:28:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-06-08 17:39:51'::timestamp AND b.Date<'2014-03-28 13:03:02'::timestamp;

