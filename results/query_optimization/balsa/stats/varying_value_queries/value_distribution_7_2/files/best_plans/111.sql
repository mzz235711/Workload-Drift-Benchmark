/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<70 AND p.CommentCount>6 AND p.CommentCount<35 AND u.DownVotes>488 AND u.DownVotes<1068 AND v.CreationDate>'2010-01-03 22:47:17'::timestamp AND v.CreationDate<'2014-08-06 11:44:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2014-04-23 15:32:53'::timestamp AND b.Date<'2014-05-11 09:43:42'::timestamp;

