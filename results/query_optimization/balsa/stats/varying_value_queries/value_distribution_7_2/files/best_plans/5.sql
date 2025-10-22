/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<94 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>154 AND u.DownVotes<438 AND v.CreationDate>'2010-06-11 15:48:08'::timestamp AND v.CreationDate<'2011-07-23 22:24:59'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2010-08-25 15:43:54'::timestamp AND b.Date<'2012-06-23 18:32:44'::timestamp;

