/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<71 AND p.CommentCount>3 AND p.CommentCount<34 AND u.DownVotes>311 AND u.DownVotes<1615 AND v.CreationDate>'2009-10-08 03:34:00'::timestamp AND v.CreationDate<'2013-12-07 14:57:11'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2013-08-17 14:30:24'::timestamp AND b.Date<'2014-04-20 09:06:01'::timestamp;

