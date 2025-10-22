/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<128 AND p.CommentCount>15 AND p.CommentCount<25 AND u.DownVotes>178 AND u.DownVotes<406 AND v.CreationDate>'2010-12-10 17:43:07'::timestamp AND v.CreationDate<'2014-02-16 04:44:39'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2012-02-08 11:46:05'::timestamp AND b.Date<'2012-03-09 01:15:13'::timestamp;

