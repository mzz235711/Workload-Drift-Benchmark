/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>269 AND u.DownVotes<1260 AND v.CreationDate>'2009-11-15 03:02:07'::timestamp AND v.CreationDate<'2014-08-06 12:49:23'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-07-09 07:14:55'::timestamp AND b.Date<'2014-07-28 17:37:33'::timestamp;

