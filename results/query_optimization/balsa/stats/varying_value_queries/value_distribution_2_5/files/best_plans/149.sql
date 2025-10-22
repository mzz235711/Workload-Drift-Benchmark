/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<159 AND p.CommentCount>7 AND p.CommentCount<25 AND u.DownVotes>112 AND u.DownVotes<553 AND v.CreationDate>'2012-12-14 14:59:13'::timestamp AND v.CreationDate<'2014-01-12 15:09:16'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<12 AND b.Date>'2011-01-16 05:01:29'::timestamp AND b.Date<'2014-03-29 08:26:53'::timestamp;

