/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<186 AND p.CommentCount>18 AND p.CommentCount<30 AND u.DownVotes>190 AND u.DownVotes<548 AND v.CreationDate>'2009-08-24 03:57:25'::timestamp AND v.CreationDate<'2012-04-22 19:18:43'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-08-15 05:36:07'::timestamp AND b.Date<'2012-08-29 15:50:56'::timestamp;

