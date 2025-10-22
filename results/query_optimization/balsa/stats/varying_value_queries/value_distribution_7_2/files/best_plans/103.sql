/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<133 AND p.CommentCount>15 AND p.CommentCount<21 AND u.DownVotes>78 AND u.DownVotes<1450 AND v.CreationDate>'2009-07-20 09:17:23'::timestamp AND v.CreationDate<'2012-08-18 23:14:18'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-01-07 00:32:28'::timestamp AND b.Date<'2012-08-04 00:00:44'::timestamp;

