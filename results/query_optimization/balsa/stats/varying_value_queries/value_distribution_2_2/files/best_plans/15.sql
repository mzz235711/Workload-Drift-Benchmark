/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<38 AND p.CommentCount>8 AND p.CommentCount<31 AND u.DownVotes>470 AND u.DownVotes<1428 AND v.CreationDate>'2012-10-06 15:26:26'::timestamp AND v.CreationDate<'2014-01-30 04:40:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-06-10 19:48:40'::timestamp AND b.Date<'2012-08-09 03:07:23'::timestamp;

