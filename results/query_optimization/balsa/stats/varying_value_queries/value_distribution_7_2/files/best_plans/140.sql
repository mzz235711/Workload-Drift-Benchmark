/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<176 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>8 AND u.DownVotes<1052 AND v.CreationDate>'2010-03-04 05:37:57'::timestamp AND v.CreationDate<'2012-01-18 18:38:52'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2012-04-21 23:25:13'::timestamp AND b.Date<'2012-10-09 20:16:29'::timestamp;

