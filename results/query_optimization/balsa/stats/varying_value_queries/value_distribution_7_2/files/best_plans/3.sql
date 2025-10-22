/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<37 AND p.CommentCount>4 AND p.CommentCount<22 AND u.DownVotes>80 AND u.DownVotes<1867 AND v.CreationDate>'2012-05-31 14:00:48'::timestamp AND v.CreationDate<'2012-07-12 08:06:20'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2013-01-31 21:53:25'::timestamp AND b.Date<'2013-10-23 21:00:18'::timestamp;

