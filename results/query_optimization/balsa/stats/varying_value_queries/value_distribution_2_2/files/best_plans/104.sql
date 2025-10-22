/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<82 AND p.CommentCount>11 AND p.CommentCount<31 AND u.DownVotes>180 AND u.DownVotes<612 AND v.CreationDate>'2010-06-15 04:45:33'::timestamp AND v.CreationDate<'2011-11-23 09:34:38'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2011-01-25 22:33:37'::timestamp AND b.Date<'2011-07-29 03:52:56'::timestamp;

