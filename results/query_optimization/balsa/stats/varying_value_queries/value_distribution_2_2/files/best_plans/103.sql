/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<105 AND p.CommentCount>13 AND p.CommentCount<31 AND u.DownVotes>488 AND u.DownVotes<1121 AND v.CreationDate>'2010-01-21 16:27:40'::timestamp AND v.CreationDate<'2011-09-05 06:03:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-02-29 09:37:03'::timestamp AND b.Date<'2012-05-06 01:24:49'::timestamp;

