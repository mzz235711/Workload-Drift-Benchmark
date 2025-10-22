/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<116 AND p.CommentCount>13 AND p.CommentCount<34 AND u.DownVotes>703 AND u.DownVotes<1497 AND v.CreationDate>'2009-06-19 21:53:35'::timestamp AND v.CreationDate<'2012-09-29 14:28:12'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-12-15 01:56:53'::timestamp AND b.Date<'2014-07-14 03:08:56'::timestamp;

