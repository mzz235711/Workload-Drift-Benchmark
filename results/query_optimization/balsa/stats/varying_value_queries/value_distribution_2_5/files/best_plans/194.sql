/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<21 AND p.CommentCount>5 AND p.CommentCount<22 AND u.DownVotes>762 AND u.DownVotes<1774 AND v.CreationDate>'2010-12-14 22:01:51'::timestamp AND v.CreationDate<'2012-01-25 21:05:09'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<12 AND b.Date>'2010-10-15 10:56:39'::timestamp AND b.Date<'2010-12-25 10:00:00'::timestamp;

