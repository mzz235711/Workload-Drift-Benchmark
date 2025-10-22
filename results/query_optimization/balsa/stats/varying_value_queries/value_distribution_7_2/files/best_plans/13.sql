/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<66 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>594 AND u.DownVotes<1324 AND v.CreationDate>'2009-03-19 21:12:30'::timestamp AND v.CreationDate<'2014-05-01 12:18:40'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-10-08 19:21:56'::timestamp AND b.Date<'2012-12-28 08:13:18'::timestamp;

