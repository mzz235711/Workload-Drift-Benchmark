/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<106 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>334 AND u.DownVotes<854 AND v.CreationDate>'2009-05-31 20:37:03'::timestamp AND v.CreationDate<'2012-06-20 04:01:36'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-07-05 18:13:05'::timestamp AND b.Date<'2012-09-26 15:56:15'::timestamp;

